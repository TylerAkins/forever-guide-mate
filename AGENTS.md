# Repository instructions

- Keep changes minimal and focused.
- Target Interface 16001.
- Read surrounding code before editing.
- Do not guess Forever APIs; feature-detect optional APIs when features are eventually added.
- Do not automate gameplay or use protected hooks and actions.
- Add focused tests for new logic.
- When editing guides, follow [docs/guide-authoring.md](docs/guide-authoring.md); run `luajit -joff tests/lua/lint.lua` and `luajit -joff tests/lua/audit_accept_chains.lua` (detour parity is part of lint). Add woven quest chains to `tests/lua/guide_data_checks.lua` when a prior turn-in is required.
- **CI and releases:** Pull request CI runs Go and LuaJIT test coverage, validates release notes, and (when shipped addon content changes) requires `VERSION` to advance by one patch or to a later minor version within the same major ending in `.0`, plus a matching `## x.y.z` heading in `CHANGELOG.md` and current-only notes in `RELEASE_NOTES.md`. The paths that trigger that check are listed in `.github/workflows/ci.yml` (`Validate automated release intent`). Before you push guide or addon fixes, run the same commands as CI locally (`docs/DEVELOPMENT.md` and the **Before you ship** section in `docs/guide-authoring.md`). If CI fails on release validation, update `VERSION` and both changelog files, then push again.
- Keep generated and compiled files out of source control.
- Do not add dependencies without justification.
- Do not create commits, tags, releases, or pull requests unless explicitly requested. The initial repository creation commit is the sole exception authorized by this bootstrap task.
