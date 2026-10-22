package release

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

var versionPattern = regexp.MustCompile(`^(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)\.(0|[1-9][0-9]*)$`)
var headingPattern = regexp.MustCompile(`(?m)^## ([0-9]+\.[0-9]+\.[0-9]+)(?:\s+[-—].*)?$`)
var emailPattern = regexp.MustCompile(`[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}`)

type Version struct{ Major, Minor, Patch int }

func ParseVersion(value string) (Version, error) {
	parts := versionPattern.FindStringSubmatch(strings.TrimSpace(value))
	if parts == nil {
		return Version{}, fmt.Errorf("invalid stable version: %q", value)
	}
	values := [3]int{}
	for i := range values {
		parsed, err := strconv.Atoi(parts[i+1])
		if err != nil {
			return Version{}, fmt.Errorf("invalid stable version: %q", value)
		}
		values[i] = parsed
	}
	return Version{values[0], values[1], values[2]}, nil
}

func (v Version) String() string { return fmt.Sprintf("%d.%d.%d", v.Major, v.Minor, v.Patch) }

func PlanAutomatedRelease(previous, current string, contentChanged bool) (string, error) {
	if !contentChanged {
		return "", nil
	}
	old, err := ParseVersion(previous)
	if err != nil {
		return "", err
	}
	next, err := ParseVersion(current)
	if err != nil {
		return "", err
	}
	patch := Version{old.Major, old.Minor, old.Patch + 1}
	minor := Version{old.Major, old.Minor + 1, 0}
	if next != patch && next != minor {
		return "", fmt.Errorf("release content changed, but VERSION must advance from %s to %s or %s; found %s", old, patch, minor, next)
	}
	return "v" + next.String(), nil
}

func ValidateNotes(notes, version string) error {
	parsed, err := ParseVersion(version)
	if err != nil {
		return err
	}
	headings := headingPattern.FindAllStringSubmatch(notes, -1)
	if len(headings) != 1 || headings[0][1] != parsed.String() {
		return fmt.Errorf("RELEASE_NOTES.md must contain exactly one release heading for %s", parsed)
	}
	if emailPattern.MatchString(notes) {
		return fmt.Errorf("RELEASE_NOTES.md must not contain email addresses")
	}
	return nil
}

func PlanTag(existingSHA, targetSHA string) (string, error) {
	if targetSHA == "" {
		return "", fmt.Errorf("target tag commit SHA is required")
	}
	if existingSHA == "" {
		return "create", nil
	}
	if existingSHA != targetSHA {
		return "", fmt.Errorf("tag already points to %s, not target commit %s", existingSHA, targetSHA)
	}
	return "reuse", nil
}
