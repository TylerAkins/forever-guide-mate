package cichecks

import "strings"

var checkNames = []string{"go", "lua", "journeys", "package"}

var documentationFiles = map[string]bool{
	"README.md": true, "AGENTS.md": true, "CHANGELOG.md": true, "RELEASE_NOTES.md": true,
}

var packagingFiles = map[string]bool{
	".pkgmeta": true, "cmd/compile-addon/main.go": true,
	"cmd/guide-release/main.go": true, "cmd/update-forever-interface/main.go": true,
}

func allChecks() map[string]bool {
	checks := make(map[string]bool, len(checkNames))
	for _, name := range checkNames {
		checks[name] = true
	}
	return checks
}

// CheckNames lists the CI checks in the order the workflow reports them.
func CheckNames() []string {
	return append([]string{}, checkNames...)
}

func SelectChecks(paths []string, full bool) map[string]bool {
	if full || len(paths) == 0 {
		return allChecks()
	}
	selected := map[string]bool{"go": true, "lua": false, "journeys": false, "package": false}
	for _, path := range paths {
		if documentationFiles[path] || (strings.HasPrefix(path, "docs/") && strings.HasSuffix(path, ".md")) {
			continue
		}
		if packagingFiles[path] {
			selected["package"] = true
			continue
		}
		return allChecks()
	}
	return selected
}
