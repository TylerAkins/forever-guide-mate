package release

import "testing"

func TestValidateAutomatedRelease(t *testing.T) {
	tag, err := PlanAutomatedRelease("0.7.0", "0.7.1", true)
	if err != nil || tag != "v0.7.1" {
		t.Fatalf("patch release = %q, %v", tag, err)
	}
	if _, err := PlanAutomatedRelease("0.7.0", "0.7.2", true); err == nil {
		t.Fatal("skipped patch version accepted")
	}
	if tag, err := PlanAutomatedRelease("0.7.0", "0.8.0", true); err != nil || tag != "v0.8.0" {
		t.Fatalf("minor release = %q, %v", tag, err)
	}
	if tag, err := PlanAutomatedRelease("0.7.0", "0.7.0", false); err != nil || tag != "" {
		t.Fatalf("unchanged content = %q, %v", tag, err)
	}
}

func TestPlanTag(t *testing.T) {
	if action, err := PlanTag("", "abc123"); err != nil || action != "create" {
		t.Fatalf("new tag = %q, %v", action, err)
	}
	if action, err := PlanTag("abc123", "abc123"); err != nil || action != "reuse" {
		t.Fatalf("existing tag = %q, %v", action, err)
	}
	if _, err := PlanTag("abc123", "def456"); err == nil {
		t.Fatal("tag collision accepted")
	}
	if _, err := PlanTag("", ""); err == nil {
		t.Fatal("empty target accepted")
	}
}

func TestValidateNotes(t *testing.T) {
	if err := ValidateNotes("## 0.7.1 - Fixes\n\nNotes.\n", "0.7.1"); err != nil {
		t.Fatal(err)
	}
	for _, notes := range []string{"## 0.7.0\nold\n", "## 0.7.1\none\n\n## 0.7.1 - duplicate\ntwo\n", "## 0.7.1\ncontact a@example.com\n"} {
		if err := ValidateNotes(notes, "0.7.1"); err == nil {
			t.Errorf("invalid notes accepted: %q", notes)
		}
	}
}
