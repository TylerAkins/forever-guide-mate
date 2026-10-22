package luatests

import (
	"bytes"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"testing"
)

func TestMissingLuaJITFailsWithActionableMessage(t *testing.T) {
	if testing.Short() {
		t.Skip("nested test process is unnecessary in short mode")
	}
	executable, err := os.Executable()
	if err != nil {
		t.Fatal(err)
	}
	command := exec.Command(executable, "-test.run=^TestLuaJITSuites$")
	command.Env = []string{"PATH=" + t.TempDir()}
	output, err := command.CombinedOutput()
	if err == nil {
		t.Fatal("LuaJIT suite unexpectedly passed without LuaJIT on PATH")
	}
	if !bytes.Contains(output, []byte("LuaJIT is required for Lua 5.1 runtime coverage; install LuaJIT and ensure luajit is on PATH")) {
		t.Fatalf("missing-LuaJIT failure was not actionable:\n%s", output)
	}
}

func TestLuaJITSuites(t *testing.T) {
	if _, err := exec.LookPath("luajit"); err != nil {
		t.Fatal("LuaJIT is required for Lua 5.1 runtime coverage; install LuaJIT and ensure luajit is on PATH")
	}
	_, file, _, _ := runtime.Caller(0)
	root := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	suites := []struct {
		name string
		env  string
	}{
		{"run.lua", ""},
		{"authored.lua", ""},
		{"ordered.lua", ""},
		{"catalog.lua", ""},
		{"journeys.lua", "FGM_DUNGEONS=1"},
		{"journeys.lua", "FGM_LOREMASTER=1"},
		{"journeys.lua", "FGM_FULL_MATRIX=1"},
		{"ui.lua", ""},
		{"lint.lua", ""},
		{"audit_accept_chains.lua", ""},
	}
	for _, suite := range suites {
		t.Run(suite.name+suite.env, func(t *testing.T) {
			cmd := exec.Command("luajit", "-joff", filepath.Join("tests", "lua", suite.name))
			cmd.Dir = root
			cmd.Env = os.Environ()
			if suite.env != "" {
				cmd.Env = append(cmd.Env, suite.env)
			}
			if output, err := cmd.CombinedOutput(); err != nil {
				t.Fatalf("LuaJIT %s failed: %v\n%s", suite.name, err, output)
			}
		})
	}
	if version, err := exec.Command("luajit", "-e", "io.write(_VERSION)").Output(); err != nil || string(version) != "Lua 5.1" {
		t.Fatalf("LuaJIT compatibility mode reported %q, error %v", version, err)
	}
}
