package addontools

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"io"
	"os"
	"os/user"
	"path/filepath"
	"strings"
)

const defaultWoWAddons = "/Applications/World of Warcraft/_classic_beta_/Interface/AddOns"

var metadataFiles = []string{"README.md", "CHANGELOG.md", "RELEASE_NOTES.md", "LICENSE"}

func sourceFiles(root string) ([]string, error) {
	tocPath := filepath.Join(root, "ForeverGuideMate.toc")
	toc, err := os.ReadFile(tocPath)
	if err != nil {
		return nil, err
	}
	files := []string{tocPath}
	for _, line := range strings.Split(string(toc), "\n") {
		name := strings.TrimSpace(line)
		if name == "" || strings.HasPrefix(name, "#") {
			continue
		}
		files = append(files, filepath.Join(root, filepath.FromSlash(name)))
	}
	for _, name := range metadataFiles {
		files = append(files, filepath.Join(root, name))
	}
	for _, file := range files {
		info, err := os.Stat(file)
		if err != nil || !info.Mode().IsRegular() {
			return nil, fmt.Errorf("missing required shipped file: %s", filepath.Base(file))
		}
	}
	return files, nil
}

func ProjectVersion(root string) (string, error) {
	data, err := os.ReadFile(filepath.Join(root, "VERSION"))
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(data)), nil
}

func Compile(root, output string, dryRun bool) ([]string, error) {
	root, err := filepath.Abs(root)
	if err != nil {
		return nil, err
	}
	output, err = filepath.Abs(output)
	if err != nil {
		return nil, err
	}
	sources, err := sourceFiles(root)
	if err != nil {
		return nil, err
	}
	destinations := make([]string, len(sources))
	for i, source := range sources {
		relative, err := filepath.Rel(root, source)
		if err != nil {
			return nil, err
		}
		destinations[i] = filepath.Join(output, relative)
	}
	if dryRun {
		return destinations, nil
	}
	version, err := ProjectVersion(root)
	if err != nil {
		return nil, err
	}
	if err := os.RemoveAll(output); err != nil {
		return nil, err
	}
	if err := os.MkdirAll(output, 0755); err != nil {
		return nil, err
	}
	for i, source := range sources {
		if err := copyFile(source, destinations[i]); err != nil {
			return nil, err
		}
	}
	tocPath := filepath.Join(output, "ForeverGuideMate.toc")
	toc, err := os.ReadFile(tocPath)
	if err != nil {
		return nil, err
	}
	return destinations, os.WriteFile(tocPath, []byte(strings.ReplaceAll(string(toc), "@project-version@", version)), 0644)
}

func copyFile(source, destination string) error {
	data, err := os.ReadFile(source)
	if err != nil {
		return err
	}
	info, err := os.Stat(source)
	if err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(destination), 0755); err != nil {
		return err
	}
	return os.WriteFile(destination, data, info.Mode().Perm())
}

func WowAddonsDir(root, override string) (string, error) {
	if override != "" {
		expanded, err := expandUser(override)
		if err != nil {
			return "", err
		}
		return filepath.Clean(expanded), nil
	}
	data, err := os.ReadFile(filepath.Join(root, "install.json"))
	if err == nil {
		var decoded any
		if err := json.Unmarshal(data, &decoded); err != nil {
			return "", err
		}
		if config, ok := decoded.(map[string]any); ok {
			if path, ok := config["wow_addons"].(string); ok && strings.TrimSpace(path) != "" {
				expanded, err := expandUser(path)
				if err != nil {
					return "", err
				}
				return filepath.Clean(expanded), nil
			}
		}
	} else if !errors.Is(err, os.ErrNotExist) {
		return "", err
	}
	return defaultWoWAddons, nil
}

func expandUser(path string) (string, error) {
	if path == "~" || strings.HasPrefix(path, "~/") {
		home, err := os.UserHomeDir()
		if err != nil {
			return "", err
		}
		if path == "~" {
			return home, nil
		}
		return filepath.Join(home, path[2:]), nil
	}
	if strings.HasPrefix(path, "~") {
		userName, rest, _ := strings.Cut(path[1:], string(os.PathSeparator))
		if userName != "" {
			account, err := user.Lookup(userName)
			if err != nil {
				return "", err
			}
			if rest != "" {
				return filepath.Join(account.HomeDir, rest), nil
			}
			return account.HomeDir, nil
		}
	}
	return path, nil
}

func Install(root, addons, output string) (string, error) {
	info, err := os.Stat(addons)
	if err != nil || !info.IsDir() {
		return "", fmt.Errorf("WoW AddOns directory does not exist: %s. Set wow_addons in install.json.", addons)
	}
	if _, err := Compile(root, output, false); err != nil {
		return "", err
	}
	destination := filepath.Join(addons, filepath.Base(output))
	if err := os.RemoveAll(destination); err != nil {
		return "", err
	}
	if err := copyTree(output, destination); err != nil {
		return "", err
	}
	return destination, nil
}

func copyTree(source, destination string) error {
	return filepath.Walk(source, func(path string, info os.FileInfo, err error) error {
		if err != nil {
			return err
		}
		rel, err := filepath.Rel(source, path)
		if err != nil {
			return err
		}
		target := filepath.Join(destination, rel)
		if info.IsDir() {
			return os.MkdirAll(target, info.Mode().Perm())
		}
		return copyFile(path, target)
	})
}

func RunCompile(root string, args []string, stdout io.Writer) error {
	flags := flag.NewFlagSet("compile-addon", flag.ContinueOnError)
	flags.SetOutput(io.Discard)
	dry := flags.Bool("dry-run", false, "list files without changing the output")
	install := flags.Bool("install", false, "install into the configured WoW AddOns folder")
	override := flags.String("wow-addons", "", "AddOns directory override")
	if err := flags.Parse(args); err != nil {
		return err
	}
	if *install && *dry {
		return errors.New("--install cannot be combined with --dry-run")
	}
	output := filepath.Join(root, ".compiled", "ForeverGuideMate")
	if *install {
		addons, err := WowAddonsDir(root, *override)
		if err != nil {
			return err
		}
		dest, err := Install(root, addons, output)
		if err != nil {
			return err
		}
		_, err = fmt.Fprintf(stdout, "Installed %s\n", dest)
		return err
	}
	files, err := Compile(root, output, *dry)
	if err != nil {
		return err
	}
	if *dry {
		if _, err := fmt.Fprintf(stdout, "Would build %d files in %s\n", len(files), output); err != nil {
			return err
		}
		for _, file := range files {
			if _, err := fmt.Fprintln(stdout, file); err != nil {
				return err
			}
		}
		return nil
	}
	_, err = fmt.Fprintf(stdout, "Built %d files in %s\n", len(files), output)
	return err
}
