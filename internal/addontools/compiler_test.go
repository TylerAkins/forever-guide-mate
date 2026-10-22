package addontools

import (
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
)

func fixture(t *testing.T) string {
	t.Helper()
	root := t.TempDir()
	files := map[string]string{"ForeverGuideMate.toc": "## Interface: 16001\n## Version: @project-version@\nCore.lua\nGuides/Test.lua\n", "Core.lua": "core\n", "Guides/Test.lua": "guide\n", "README.md": "readme\n", "CHANGELOG.md": "history\n", "RELEASE_NOTES.md": "notes\n", "LICENSE": "license\n", "VERSION": "1.2.3\n"}
	for name, content := range files {
		path := filepath.Join(root, name)
		if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
			t.Fatal(err)
		}
		if err := os.WriteFile(path, []byte(content), 0644); err != nil {
			t.Fatal(err)
		}
	}
	return root
}

func TestCompileCopiesOnlyTOCFilesAndMetadata(t *testing.T) {
	root := fixture(t)
	output := filepath.Join(root, ".compiled", "ForeverGuideMate")
	files, err := Compile(root, output, false)
	if err != nil {
		t.Fatal(err)
	}
	want := []string{"ForeverGuideMate.toc", "Core.lua", "Guides/Test.lua", "README.md", "CHANGELOG.md", "RELEASE_NOTES.md", "LICENSE"}
	got := make([]string, len(files))
	for i, path := range files {
		got[i], _ = filepath.Rel(output, path)
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("compiled files %v, want %v", got, want)
	}
	toc, err := os.ReadFile(filepath.Join(output, "ForeverGuideMate.toc"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(toc), "## Version: 1.2.3") {
		t.Fatalf("version not substituted: %s", toc)
	}
	if _, err := os.Stat(filepath.Join(output, "Guides", "Unused.lua")); !os.IsNotExist(err) {
		t.Fatalf("non-TOC guide copied, err=%v", err)
	}
}

func TestCompileValidatesSourcesBeforeReplacingOutput(t *testing.T) {
	root := fixture(t)
	output := filepath.Join(root, "out")
	if err := os.MkdirAll(output, 0755); err != nil {
		t.Fatal(err)
	}
	sentinel := filepath.Join(output, "keep")
	if err := os.WriteFile(sentinel, []byte("keep"), 0644); err != nil {
		t.Fatal(err)
	}
	if err := os.Remove(filepath.Join(root, "Guides", "Test.lua")); err != nil {
		t.Fatal(err)
	}
	if _, err := Compile(root, output, false); err == nil {
		t.Fatal("missing TOC file accepted")
	}
	if _, err := os.Stat(sentinel); err != nil {
		t.Fatalf("output removed before validation: %v", err)
	}
}

func TestDryRunDoesNotCreateOutput(t *testing.T) {
	root := fixture(t)
	output := filepath.Join(root, "out")
	if err := os.Remove(filepath.Join(root, "VERSION")); err != nil {
		t.Fatal(err)
	}
	files, err := Compile(root, output, true)
	if err != nil {
		t.Fatal(err)
	}
	if len(files) != 7 {
		t.Fatalf("dry run listed %d files", len(files))
	}
	if _, err := os.Stat(output); !os.IsNotExist(err) {
		t.Fatalf("dry run created output, err=%v", err)
	}
}

func TestInstallCopiesBuiltTreeAndValidatesAddOnsDirectory(t *testing.T) {
	root := fixture(t)
	addons := filepath.Join(root, "AddOns")
	if err := os.Mkdir(addons, 0755); err != nil {
		t.Fatal(err)
	}
	output := filepath.Join(root, "build", "ForeverGuideMate")
	installed, err := Install(root, addons, output)
	if err != nil {
		t.Fatal(err)
	}
	if installed != filepath.Join(addons, "ForeverGuideMate") {
		t.Fatalf("install path = %q", installed)
	}
	if _, err := os.Stat(filepath.Join(installed, "Guides", "Test.lua")); err != nil {
		t.Fatal(err)
	}
	if _, err := Install(root, filepath.Join(root, "missing"), output); err == nil {
		t.Fatal("missing AddOns directory accepted")
	}
}

func TestWoWAddOnsDefaultAndConfig(t *testing.T) {
	root := fixture(t)
	path, err := WowAddonsDir(root, "")
	if err != nil || path != defaultWoWAddons {
		t.Fatalf("default AddOns path = %q, %v", path, err)
	}
	home, err := os.UserHomeDir()
	if err != nil {
		t.Fatal(err)
	}
	path, err = WowAddonsDir(root, "~/Games/WoW/AddOns")
	if err != nil || path != filepath.Join(home, "Games", "WoW", "AddOns") {
		t.Fatalf("expanded override = %q, %v", path, err)
	}
	if err := os.WriteFile(filepath.Join(root, "install.json"), []byte(`{"wow_addons":"/custom/addons"}`), 0644); err != nil {
		t.Fatal(err)
	}
	path, err = WowAddonsDir(root, "")
	if err != nil || path != "/custom/addons" {
		t.Fatalf("configured AddOns path = %q, %v", path, err)
	}
	if err := os.WriteFile(filepath.Join(root, "install.json"), []byte("{"), 0644); err != nil {
		t.Fatal(err)
	}
	if _, err := WowAddonsDir(root, ""); err == nil {
		t.Fatal("malformed install.json silently fell back to the default")
	}
}
