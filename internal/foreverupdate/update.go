package foreverupdate

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"time"

	"github.com/TylerAkins/forever-guide-mate/internal/release"
)

const VersionsURL = "https://us.version.battle.net/v2/products/wow_classic_beta/versions"

type GameBuild struct {
	Version   string
	BuildID   int
	Interface int
}
type UpdateResult struct {
	Changed      bool
	GameBuild    GameBuild
	AddonVersion string
}

var gameVersion = regexp.MustCompile(`^(\d+)\.(\d+)\.(\d+)\.(\d+)$`)
var interfaceLine = regexp.MustCompile(`(?m)^## Interface:\s*(.+)$`)

func InterfaceFromVersion(version string) (int, error) {
	parts := gameVersion.FindStringSubmatch(version)
	if parts == nil {
		return 0, fmt.Errorf("Invalid WoW Forever game version: %s", version)
	}
	interfaceValue, err := strconv.Atoi(fmt.Sprintf("%s%02s%02s", parts[1], parts[2], parts[3]))
	if err != nil {
		return 0, fmt.Errorf("Invalid WoW Forever game version: %s", version)
	}
	return interfaceValue, nil
}

func ParseVersions(text, region string) (GameBuild, error) {
	lines := []string{}
	for _, line := range strings.Split(text, "\n") {
		if line = strings.TrimSpace(line); line != "" {
			lines = append(lines, line)
		}
	}
	if len(lines) == 0 {
		return GameBuild{}, fmt.Errorf("Blizzard version feed is empty")
	}
	fields := strings.Split(lines[0], "|")
	headers := make([]string, len(fields))
	positions := map[string]int{}
	for i, field := range fields {
		headers[i] = strings.SplitN(field, "!", 2)[0]
		positions[headers[i]] = i
	}
	for _, name := range []string{"Region", "BuildId", "VersionsName"} {
		if _, ok := positions[name]; !ok {
			return GameBuild{}, fmt.Errorf("Blizzard version feed is missing required columns")
		}
	}
	for _, line := range lines[1:] {
		if strings.HasPrefix(line, "##") {
			continue
		}
		values := strings.Split(line, "|")
		if len(values) != len(headers) {
			return GameBuild{}, fmt.Errorf("Blizzard version feed contains a malformed row")
		}
		if values[positions["Region"]] != region {
			continue
		}
		build, err := strconv.Atoi(values[positions["BuildId"]])
		if err != nil {
			return GameBuild{}, fmt.Errorf("Blizzard build ID is not numeric")
		}
		version := values[positions["VersionsName"]]
		iface, err := InterfaceFromVersion(version)
		if err != nil {
			return GameBuild{}, err
		}
		return GameBuild{version, build, iface}, nil
	}
	return GameBuild{}, fmt.Errorf("Blizzard version feed has no %q region", region)
}

func FetchVersions(url string) (string, error) {
	client := http.Client{Timeout: 30 * time.Second}
	response, err := client.Get(url)
	if err != nil {
		return "", err
	}
	defer response.Body.Close()
	if response.StatusCode < 200 || response.StatusCode >= 300 {
		return "", fmt.Errorf("Blizzard version feed returned HTTP %s", response.Status)
	}
	data, err := io.ReadAll(response.Body)
	return string(data), err
}

func CurrentInterfaces(toc string) ([]int, error) {
	match := interfaceLine.FindStringSubmatch(toc)
	if match == nil {
		return nil, fmt.Errorf("TOC is missing an Interface line")
	}
	values := strings.Split(match[1], ",")
	interfaces := make([]int, 0, len(values))
	for _, value := range values {
		n, err := strconv.Atoi(strings.TrimSpace(value))
		if err != nil {
			return nil, fmt.Errorf("TOC Interface values must be numeric")
		}
		interfaces = append(interfaces, n)
	}
	if len(interfaces) == 0 {
		return nil, fmt.Errorf("TOC has no Interface values")
	}
	return interfaces, nil
}

func replaceChangelog(changelog, version, entry string) (string, error) {
	headings := regexp.MustCompile(`(?m)^## ([0-9]+\.[0-9]+\.[0-9]+)(?:\s+[-—].*)?$`).FindAllStringSubmatchIndex(changelog, -1)
	for i, heading := range headings {
		if changelog[heading[2]:heading[3]] != version {
			continue
		}
		end := len(changelog)
		if i+1 < len(headings) {
			end = headings[i+1][0]
		}
		return changelog[:heading[0]] + strings.TrimRight(entry, "\n") + "\n\n" + changelog[end:], nil
	}
	first := regexp.MustCompile(`(?m)^## \d+\.\d+\.\d+`).FindStringIndex(changelog)
	if first == nil {
		return "", fmt.Errorf("CHANGELOG.md has no release heading")
	}
	return changelog[:first[0]] + entry + "\n" + changelog[first[0]:], nil
}

func PrepareUpdate(root string, build GameBuild, date string, dryRun bool) (UpdateResult, error) {
	read := func(name string) (string, error) {
		data, err := os.ReadFile(filepath.Join(root, name))
		return string(data), err
	}
	toc, err := read("ForeverGuideMate.toc")
	if err != nil {
		return UpdateResult{}, err
	}
	interfaces, err := CurrentInterfaces(toc)
	if err != nil {
		return UpdateResult{}, err
	}
	max := interfaces[0]
	for _, value := range interfaces[1:] {
		if value > max {
			max = value
		}
	}
	for _, value := range interfaces {
		if build.Interface == value {
			return UpdateResult{false, build, ""}, nil
		}
	}
	if build.Interface < max {
		return UpdateResult{}, fmt.Errorf("Refusing to downgrade Interface %d to %d", max, build.Interface)
	}
	versionText, err := read("VERSION")
	if err != nil {
		return UpdateResult{}, err
	}
	current, err := release.ParseVersion(versionText)
	if err != nil {
		return UpdateResult{}, err
	}
	next := release.Version{Major: current.Major, Minor: current.Minor, Patch: current.Patch + 1}
	updatedTOC := replaceFirstInterface(toc, fmt.Sprintf("## Interface: %d", build.Interface))
	if date == "" {
		date = time.Now().UTC().Format("2006-01-02")
	}
	entry := fmt.Sprintf("## %s - %s\n\n- Update WoW Forever compatibility for game build %s (Interface %d).\n", next, date, build.Version, build.Interface)
	changelog, err := read("CHANGELOG.md")
	if err != nil {
		return UpdateResult{}, err
	}
	updatedChangelog, err := replaceChangelog(changelog, next.String(), entry)
	if err != nil {
		return UpdateResult{}, err
	}
	if err := release.ValidateNotes(entry, next.String()); err != nil {
		return UpdateResult{}, err
	}
	if !dryRun {
		for _, file := range []struct{ name, value string }{{"ForeverGuideMate.toc", updatedTOC}, {"VERSION", next.String() + "\n"}, {"CHANGELOG.md", updatedChangelog}, {"RELEASE_NOTES.md", entry}} {
			if err := os.WriteFile(filepath.Join(root, file.name), []byte(file.value), 0644); err != nil {
				return UpdateResult{}, err
			}
		}
	}
	return UpdateResult{true, build, next.String()}, nil
}

func replaceFirstInterface(toc, replacement string) string {
	indices := interfaceLine.FindStringIndex(toc)
	if indices == nil {
		return toc
	}
	return toc[:indices[0]] + replacement + toc[indices[1]:]
}
