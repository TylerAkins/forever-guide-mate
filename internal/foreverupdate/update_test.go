package foreverupdate

import (
	"os"
	"path/filepath"
	"reflect"
	"strconv"
	"strings"
	"testing"
)

const versionsFeed = "Region!STRING:0|BuildId!DEC:4|VersionsName!String:0\n## seqn = 1\nus|69913|1.60.1.69913\neu|69913|1.60.1.69913\n"

func TestParseVersionsAndInterface(t *testing.T) {
	build, err := ParseVersions(versionsFeed, "us")
	if err != nil || build.Version != "1.60.1.69913" || build.BuildID != 69913 || build.Interface != 16001 {
		t.Fatalf("build=%+v err=%v", build, err)
	}
	if _, err := InterfaceFromVersion("1.60.1"); err == nil || !strings.Contains(err.Error(), "Invalid WoW Forever") {
		t.Fatalf("malformed version: %v", err)
	}
	if _, err := ParseVersions("Region!STRING:0|BuildId!DEC:4\n", "us"); err == nil || !strings.Contains(err.Error(), "missing required columns") {
		t.Fatalf("malformed feed: %v", err)
	}
	if got, err := InterfaceFromVersion("1.123.4.1"); err != nil || got != 112304 {
		t.Fatalf("interface concatenation = %d, %v", got, err)
	}
}

func releaseFixture(t *testing.T, interfaceVersion int) string {
	t.Helper()
	root := t.TempDir()
	files := map[string]string{"ForeverGuideMate.toc": "## Interface: " + strconv.Itoa(interfaceVersion) + "\n## Version: @project-version@\n", "VERSION": "0.1.0\n", "CHANGELOG.md": "# Changelog\n\nNotable changes.\n\n## 0.1.0 - 2026-09-19\n\n- Existing release.\n", "RELEASE_NOTES.md": "## 0.1.0 - 2026-09-19\n\n- Existing release.\n"}
	for name, value := range files {
		if err := os.WriteFile(filepath.Join(root, name), []byte(value), 0644); err != nil {
			t.Fatal(err)
		}
	}
	return root
}

func readReleaseFiles(t *testing.T, root string) map[string]string {
	t.Helper()
	result := map[string]string{}
	for _, name := range []string{"ForeverGuideMate.toc", "VERSION", "CHANGELOG.md", "RELEASE_NOTES.md"} {
		data, err := os.ReadFile(filepath.Join(root, name))
		if err != nil {
			t.Fatal(err)
		}
		result[name] = string(data)
	}
	return result
}

func TestPrepareUpdateAndDryRun(t *testing.T) {
	root := releaseFixture(t, 16001)
	build := GameBuild{"1.60.2.70123", 70123, 16002}
	result, err := PrepareUpdate(root, build, "2026-09-23", false)
	if err != nil || !result.Changed || result.AddonVersion != "0.1.1" {
		t.Fatalf("result=%+v err=%v", result, err)
	}
	files := readReleaseFiles(t, root)
	if !strings.Contains(files["ForeverGuideMate.toc"], "## Interface: 16002") || files["VERSION"] != "0.1.1\n" || !strings.Contains(files["CHANGELOG.md"], "## 0.1.1 - 2026-09-23") || strings.Count(files["RELEASE_NOTES.md"], "## ") != 1 {
		t.Fatalf("unexpected release files: %#v", files)
	}
	second, err := PrepareUpdate(root, build, "", false)
	if err != nil || second.Changed {
		t.Fatalf("not idempotent: %+v %v", second, err)
	}
	root = releaseFixture(t, 16001)
	before := readReleaseFiles(t, root)
	dry, err := PrepareUpdate(root, build, "2026-09-23", true)
	if err != nil || !dry.Changed || dry.AddonVersion != "0.1.1" {
		t.Fatalf("dry run=%+v err=%v", dry, err)
	}
	if after := readReleaseFiles(t, root); !reflect.DeepEqual(before, after) {
		t.Fatalf("dry-run changed release files: %#v", after)
	}
}

func TestPrepareUpdateRejectsDowngradeAndNoOpsSameInterface(t *testing.T) {
	root := releaseFixture(t, 16002)
	if _, err := PrepareUpdate(root, GameBuild{"1.60.1.69913", 69913, 16001}, "", false); err == nil || !strings.Contains(err.Error(), "Refusing to downgrade") {
		t.Fatalf("downgrade error=%v", err)
	}
	root = releaseFixture(t, 16001)
	before := readReleaseFiles(t, root)
	result, err := PrepareUpdate(root, GameBuild{"1.60.1.79999", 79999, 16001}, "", false)
	if err != nil || result.Changed {
		t.Fatalf("same interface=%+v err=%v", result, err)
	}
	if after := readReleaseFiles(t, root); !reflect.DeepEqual(before, after) {
		t.Fatal("same-interface update changed files")
	}
}

func TestPrepareUpdateReplacesOnlyFirstInterfaceLine(t *testing.T) {
	root := releaseFixture(t, 16001)
	tocPath := filepath.Join(root, "ForeverGuideMate.toc")
	toc, err := os.ReadFile(tocPath)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(tocPath, append(toc, []byte("## Interface: 16000\n")...), 0644); err != nil {
		t.Fatal(err)
	}
	_, err = PrepareUpdate(root, GameBuild{"1.60.2.70123", 70123, 16002}, "2026-09-23", false)
	if err != nil {
		t.Fatal(err)
	}
	updated, err := os.ReadFile(tocPath)
	if err != nil {
		t.Fatal(err)
	}
	if strings.Count(string(updated), "## Interface: 16002") != 1 || !strings.Contains(string(updated), "## Interface: 16000") {
		t.Fatalf("unexpected TOC: %s", updated)
	}
}
