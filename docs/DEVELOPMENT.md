# Development

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever (Interface **16001**). Players should read [README.md](../README.md). This file is for maintaining the repo, guides, and releases.

## Layout

| Path | Role |
|------|------|
| `ForeverGuideMate.toc` | Load order, Interface 16001, packager metadata |
| `Core.lua` | Saved variables, events |
| `GuideEngine.lua` | Guide routing and progress |
| `UI.lua` | Tracker and guide library |
| `Guides/Leveling/` | Zephras Isle and converted Era chapters (titles without `(Era)`) |
| `Guides/Era/` | Unconverted Era chapters (titles with `(Era)`, not loaded) |
| `Guides/Loremaster/` | Zone-completion guides |
| `Guides/Dungeons/` | Dungeon quest guides |
| `VERSION` | Current stable release used by automated version checks |
| `RELEASE_NOTES.md` | Curated notes for only the current release |
| `tools/compile_addon.py` | Local install-tree builder |
| `tools/guide_release.py` | Validates automated patch releases |
| `tools/update_forever_interface.py` | Blizzard build feed → TOC compatibility release |
| `.pkgmeta` | [BigWigs packager](https://github.com/BigWigsMods/packager) rules |

## Guides

Quest-step rules are in [guide-authoring.md](guide-authoring.md). Loremaster weave rules are in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`. Era chapter conversion rules are in `.cursor/skills/era-forever-weave/SKILL.md`.

```sh
python3 -m unittest discover -s tests
lua5.1 tests/lua/run.lua
lua5.1 tests/lua/ui.lua
lua5.1 tests/lua/lint.lua
lua5.1 tests/lua/audit_accept_chains.lua
```

CI (`validate`) runs the same suite, validates `RELEASE_NOTES.md` against `VERSION`, then dry-runs the packager.

## Forever interface updates

Workflow **Update Forever interface** (`.github/workflows/update-forever-interface.yml`):

- Runs Wednesday at 12:00 UTC, after the US Tuesday and EU Wednesday maintenance windows
- Reads Blizzard's explicit `wow_classic_beta` product feed and converts versions such as `1.60.1.69913` to Interface `16001`
- Ignores build-only changes when the calculated Interface is unchanged
- Opens or refreshes the reviewed `forever-interface-update` PR with the TOC, next patch version, changelog entry, and current release notes
- Closes that fixed PR if the current Interface is already supported on `main`
- Publishes the prepared GitHub and CurseForge release only after a human merges the PR

Run it manually from `main` when an out-of-cycle Forever patch lands. If Blizzard moves Forever off `wow_classic_beta` after launch, change the single `VERSIONS_URL` constant in `tools/update_forever_interface.py` rather than falling back to another WoW flavor.

## Local builds

Build a clean, directly installable addon folder with:

```sh
python3 tools/compile_addon.py
```

Each run deletes the previous `.compiled/ForeverGuideMate` directory and recreates it from the files shipped by `tools/compile_addon.py`. The generated TOC uses `VERSION` as its version. Copy `.compiled/ForeverGuideMate` directly into the client's `Interface/AddOns` directory.

Use `python3 tools/compile_addon.py --dry-run` to list the files without changing `.compiled/`.

## Releases

| Channel | Trigger | Result |
|---------|---------|--------|
| Stable | Push an annotated `v*` tag, or merge a reviewed interface PR (or a guide PR that bumps `VERSION`) | Numbered GitHub Release and CurseForge package |
| Preview | Merge to `main` or manually run the Release workflow | Commit-specific GitHub Actions artifact |

Only stable tags are distributed to players. Preview builds are for testing and do not push or move a Git tag. Do not point players at GitHub's “Source code” archives; the packager zip is the installable addon.

`.pkgmeta` ships addon Lua, guides, `README.md`, `CHANGELOG.md`, and `RELEASE_NOTES.md`. It does **not** ship `VERSION`, `tests/`, `tools/`, `.github/`, or docs.

The packager uploads `RELEASE_NOTES.md` as the release changelog instead of generating notes from Git commits. This prevents commit metadata from appearing on CurseForge and avoids publishing the full release history. Automated Forever Interface PRs replace this file with only their prepared release entry. CI requires that entry to match `VERSION` and rejects email addresses.

All stable releases must update `VERSION` to match the tag. Automated Forever Interface PRs do this, and merging a release-content PR that bumps `VERSION` by exactly one patch creates the tag. If two release PRs prepare the same patch concurrently, merge one and manually refresh the other so its fixed PR updates against the new `main`. For other releases, update `VERSION`, `CHANGELOG.md`, and `RELEASE_NOTES.md` in the release PR before creating the tag.

## CurseForge

CurseForge uses its [native automatic packager](https://support.curseforge.com/support/solutions/articles/9000197281-automatic-packaging). GitHub Actions does not upload to CurseForge.

Project configuration:

1. Set **Source Code** to the public GitHub repository.
2. Set **Automatic Packaging** to package new tagged commits, not all commits.
3. Generate a dedicated CurseForge API token for the repository webhook.
4. In GitHub repository settings, add a webhook for push events with this payload URL:

   ```text
   https://www.curseforge.com/api/projects/{projectID}/package?token={token}
   ```

5. Keep the webhook defaults and verify its initial delivery succeeds.

The payload URL contains the API token. Never commit it, add it as an Actions secret, paste it into an issue, or include it in logs. Revoke and replace the token if the URL is exposed.

The native packager reads `.pkgmeta` and replaces `@project-version@` with the pushed tag. A normal tag such as `v0.1.0` is a Release; tags containing `beta` or `alpha` receive the corresponding CurseForge status. Do not add `X-Curse-Project-ID` solely for native packaging.

License on CurseForge: **GPLv3**.
