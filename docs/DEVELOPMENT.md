# Development

Forever GuideMate is a local-development guide addon for World of Warcraft: Forever (Interface **16001**). Players should read [README.md](../README.md). This file is for maintaining the repo, guides, and releases.

## Layout

| Path | Role |
|------|------|
| `ForeverGuideMate.toc` | Load order, Interface 16001, packager metadata |
| `Core.lua` | Saved variables, events |
| `GuideEngine.lua` | Guide routing and progress |
| `UI.lua` | Tracker and guide library |
| `Guides/Leveling/` | Full Casual 1–60 spine (starters through Silithus); Forever weaves land here |
| `SkipLineage.lua` | Hard skip cascade for Casual and dungeon guides |
| `Guides/Loremaster/` | Authored zone completion guides; inventories and coverage are in `docs/loremaster/` and `docs/loremaster-coverage.md` |
| `Guides/Dungeons/` | Dungeon quest guides |
| `Guides/Class/` | Supported class-quest guides, one per class |
| `VERSION` | Current stable release used by automated version checks |
| `RELEASE_NOTES.md` | Curated notes for only the current release |
| `cmd/compile-addon` | Local install-tree builder |
| `cmd/ci-checks` | Selects path-based CI jobs and validates the aggregate gate |
| `cmd/audit-quest-paths` | Reports quest prerequisite, eligibility, and route-order differences |
| `cmd/guide-release` | Validates automated patch releases |
| `cmd/gen-library-books-guide` | Regenerates the library-book guide from reviewed source data |
| `cmd/import-classic-leveling` | Imports classic leveling dumps into reviewable guide chapters |
| `cmd/port-forever-weaves` | Ports selected Forever actions from previous leveling chapters |
| `cmd/apply-quest-min-levels` | Previews or applies reviewed legacy quest-level gates |
| `cmd/audit-leveling-zone-quests` | Reviews current zone quest lists against mapped leveling routes |
| `cmd/loremaster-facts` | Extracts reviewed quest facts from source observations |
| `cmd/loremaster-levels` | Computes and stamps route level helpers |
| `cmd/loremaster-order` | Parses upstream actions and orders reviewed Loremaster actions |
| `cmd/loremaster-parse` | Parses guide goals and their conditions for offline authoring tools |
| `cmd/loremaster-report` | Reports authored pickup sets and eligibility |
| `cmd/quest-database` | Merges Forever quest sources and computes pickup levels |
| `cmd/update-forever-interface` | Blizzard build feed to TOC compatibility release |
| `.pkgmeta` | [BigWigs packager](https://github.com/BigWigsMods/packager) rules |

## Guides

Quest-step rules are in [guide-authoring.md](guide-authoring.md). Class quests are supported: one guide per class in `Guides/Class/`, with race and faction on every step. Loremaster weave rules are in [zone-loremaster-guides.md](zone-loremaster-guides.md) and `.cursor/skills/zone-loremaster-guide/SKILL.md`. Era chapter conversion rules are in `.cursor/skills/era-forever-weave/SKILL.md`.

Loremaster facts and levels come from the Forever QuestieDB preview artifact and Questie's Forever policy files. The Go tools read generated JSON; LuaJIT is the only adapter for the QuestieDB baked store and policy code. From the repository root, create `.compiled/questiedb/export.json` and `.compiled/questiedb/policy.json` with matching QuestieDB and Questie checkouts:

```sh
mkdir -p .compiled/questiedb
luajit -joff tools/questiedb/export_artifact.lua /path/to/QuestieDB > .compiled/questiedb/export.json
luajit -joff tools/questiedb/export_policy.lua /path/to/QuestieDB /path/to/Questie > .compiled/questiedb/policy.json
```

The checked export records artifact version `1.0.6-dev.f844007`, build commit `f844007b329b72f18cf2bda3d87540012294732a`, and 5,232 quests. Policy output is from Questie commit `d0b0e89ac228e380e139f1c524408507e6d4fe1b`. The scripts reject unsupported fields instead of silently dropping them. `questLevel` is the step level and `requiredLevel` is the offer gate. Prerequisites, providers, objectives, and spawn locations come from QuestieDB. Holiday membership, hidden status, and tag corrections come from Questie's policy files. Daily, weekly, and monthly flags are unavailable in this source and are false in the generated facts. Audits record the source manifest and known differences from the previous source in [the migration review](loremaster/questiedb-migration.md).

Install Go 1.27.3 and LuaJIT. The Go test suite runs LuaJIT and reports a clear failure if it is missing.

```sh
go test ./...
luajit -joff tests/lua/run.lua
luajit -joff tests/lua/authored.lua
luajit -joff tests/lua/ordered.lua
luajit -joff tests/lua/catalog.lua
luajit -joff tests/lua/journeys.lua
FGM_DUNGEONS=1 luajit -joff tests/lua/journeys.lua
FGM_LOREMASTER=1 luajit -joff tests/lua/journeys.lua
luajit -joff tests/lua/ui.lua
luajit -joff tests/lua/lint.lua
luajit -joff tests/lua/audit_accept_chains.lua
```

For the complete simulated race/class matrix, run `FGM_FULL_MATRIX=1 luajit -joff tests/lua/journeys.lua`. This covers every itinerary branch with observed quest snapshots; it does not replace client walkthroughs.

CI keeps `validate` as the required aggregate check. It selects checks conservatively from PR paths and runs Go, LuaJIT, class-sharded journeys, and packaging in parallel. Documentation-only PRs keep the Go check and release validation while skipping Lua and packaging. Guide, engine, test, workflow, and unknown changes keep full coverage; pushes to `main` and manual runs always run everything. Shipped addon changes still require a valid version advance and matching changelog entry. See [CI selection and verification](ci.md) for the path rules, local selector commands, and measured limits.

## Forever interface updates

Workflow **Update Forever interface** (`.github/workflows/update-forever-interface.yml`):

- Runs Wednesday at 12:00 UTC, after the US Tuesday and EU Wednesday maintenance windows
- Reads Blizzard's explicit `wow_classic_beta` product feed and converts versions such as `1.60.1.69913` to Interface `16001`
- Ignores build-only changes when the calculated Interface is unchanged
- Opens or refreshes the reviewed `forever-interface-update` PR with the TOC, next patch version, changelog entry, and current release notes
- Closes that fixed PR if the current Interface is already supported on `main`
- Publishes the prepared GitHub and CurseForge release only after a human merges the PR

Run it manually from `main` when an out-of-cycle Forever patch lands. If Blizzard moves Forever off `wow_classic_beta` after launch, change the `VersionsURL` constant in `internal/foreverupdate/update.go` rather than falling back to another WoW flavor.

## Local builds

Build a clean, directly installable addon folder with:

```sh
go run ./cmd/compile-addon
```

Each run deletes the previous `.compiled/ForeverGuideMate` directory and recreates it from the files listed in `ForeverGuideMate.toc`, plus the project metadata files. The generated TOC uses `VERSION` as its version. Copy `.compiled/ForeverGuideMate` directly into the client's `Interface/AddOns` directory.

Use `go run ./cmd/compile-addon --dry-run` to list the files without changing `.compiled/`.

Install into the path from `install.json` (or the default Forever beta AddOns folder):

```sh
go run ./cmd/compile-addon --install
```

## Reference Blizzard UI (developers)

Forever GuideMate chrome should match in-game frames (NineSlice borders from `SharedUIPanelTemplates`, quest-log list styling). Do **not** commit extracted art or FrameXML trees.

1. Launch WoW Forever with `-console`, open the console on the login screen, and run `ExportInterfaceFiles code` (and `ExportInterfaceFiles art` if you need textures).
2. Grep the export for `NineSlice`, `SharedUIPanelTemplates`, and frames such as `ProfessionsFrame` or the quest log.
3. Use `/fstack` in-game to confirm template names and anchor paths.
4. Ship only runtime references (`Interface\\...` paths, XML templates, `NineSliceUtil`) inside the addon.

[`UITheme.lua`](../UITheme.lua) centralizes panel and button styling with fallbacks when client APIs are missing.

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

The [quest level audit](quest-level-audit.md) documents its fixed database snapshot, level policy, and incomplete records.
