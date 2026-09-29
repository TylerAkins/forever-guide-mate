# Repository instructions

- Keep changes minimal and focused.
- Target Interface 16001.
- Read surrounding code before editing.
- Do not guess Forever APIs; feature-detect optional APIs when features are eventually added.
- Do not automate gameplay or use protected hooks and actions.
- Add focused tests for new logic.
- When editing guides, follow [docs/guide-authoring.md](docs/guide-authoring.md); run `lua5.1 tests/lua/lint.lua` and `lua5.1 tests/lua/audit_accept_chains.lua`. Add woven quest chains to `tests/lua/guide_data_checks.lua` when a prior turn-in is required.
- **CI and releases:** Pull request CI runs the Python and Lua test suites, validates release notes, and (when shipped addon content changes) requires an exact one-patch bump to `VERSION` plus a matching `## x.y.z` heading in `CHANGELOG.md` and current-only notes in `RELEASE_NOTES.md`. The paths that trigger that check are listed in `.github/workflows/ci.yml` (`Validate automated release intent`). Before you push guide or addon fixes, run the same commands as CI locally (`docs/DEVELOPMENT.md` and the **Before you ship** section in `docs/guide-authoring.md`). If CI fails on release validation, bump `VERSION`, update both changelog files, and push again.
- Keep generated and compiled files out of source control.
- Do not add dependencies without justification.
- Do not create commits, tags, releases, or pull requests unless explicitly requested. The initial repository creation commit is the sole exception authorized by this bootstrap task.
