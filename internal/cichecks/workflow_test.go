package cichecks

import (
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func TestWorkflowsRunGoAndLuaJITContracts(t *testing.T) {
	_, file, _, _ := runtime.Caller(0)
	root := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	ci, err := os.ReadFile(filepath.Join(root, ".github/workflows/ci.yml"))
	if err != nil {
		t.Fatal(err)
	}
	for _, required := range []string{"cmd/ci-checks", "cmd/guide-release", "cmd/compile-addon", "go-version: '1.27.3'", "apt-get install --yes luajit", "luajit -joff tests/lua/run.lua", "luajit -joff tests/lua/lint.lua", "FGM_FULL_MATRIX: '1'", "cmd/ci-checks --check-results"} {
		if !strings.Contains(string(ci), required) {
			t.Errorf("CI workflow missing %q", required)
		}
	}
	if strings.Contains(string(ci), "lua5.1 ") {
		t.Fatal("CI still calls lua5.1")
	}
	if strings.Contains(string(ci), "\n  python:") || strings.Contains(string(ci), "python3 -m unittest") {
		t.Fatal("CI still runs the retired Python test job")
	}
	goStart := strings.Index(string(ci), "\n  go:\n")
	luaStart := strings.Index(string(ci), "\n  lua:\n")
	if goStart < 0 || luaStart < 0 {
		t.Fatal("CI workflow jobs not found")
	}
	goJob := string(ci)[goStart:luaStart]
	if !strings.Contains(goJob, "apt-get install --yes luajit") || !strings.Contains(goJob, "go-version: '1.27.3'") {
		t.Fatal("Go tests need the pinned Go toolchain and LuaJIT for runtime coverage")
	}
	interfaceWorkflow, err := os.ReadFile(filepath.Join(root, ".github/workflows/update-forever-interface.yml"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(interfaceWorkflow), "cmd/update-forever-interface") || !strings.Contains(string(interfaceWorkflow), "go-version: \"1.27.3\"") {
		t.Fatal("interface workflow does not use the pinned Go toolchain and Go updater")
	}
	release, err := os.ReadFile(filepath.Join(root, ".github/workflows/release.yml"))
	if err != nil {
		t.Fatal(err)
	}
	if !strings.Contains(string(release), "cmd/guide-release validate-tag") {
		t.Fatal("release workflow lost tag validation")
	}
}
