# CI selection and verification

CI keeps the required `validate` check and the existing release gates. Independent Python, Lua, journey, and package jobs run after selection. The final `validate` job succeeds only when planning and release validation succeed and every selected job succeeds. A selected job that is skipped, cancelled, missing, or failed blocks the gate. Intentionally unselected jobs may be skipped.

This implements the selection and parallel execution work in [issue #139](https://github.com/TylerAkins/forever-guide-mate/issues/139). No repository rules or release workflows are changed.

## Which checks run

| Change | Python | Lua engine, ordered routes, catalog, UI, lint, chains | Full journey matrix | Compile and package dry run |
| --- | --- | --- | --- | --- |
| `README.md`, `AGENTS.md`, `CHANGELOG.md`, `RELEASE_NOTES.md`, or Markdown under `docs/` | Yes | No | No | No |
| `.pkgmeta`, `tools/compile_addon.py`, `tools/guide_release.py`, `tools/update_forever_interface.py` | Yes | No | No | Yes |
| Guides, engine, shared quest metadata, TOC, tests, fixtures, dependencies, workflows, or any other path | Yes | Yes | Yes | Yes |
| Push to `main`, manual run, or empty diff | Yes | Yes | Yes | Yes |

Mixed changes take the union of these checks. Unknown paths retain full coverage. Guide changes deliberately run every journey: starter chapters, class chains, prerequisites, and the Casual route share dependencies, so a filename is not enough to choose a safe subset.

Python stays enabled for documentation changes because its short suite checks documentation contracts, release tooling, and the CI selector itself. Discovery includes the release and interface-update tests exactly once.

Current release notes are validated in the planning job on every run. On PRs, the existing release-intent gate still checks shipped addon changes against the base version and requires the matching changelog entry. It also includes `SkipLineage.lua`, a shipped runtime file missing from the old path list. The current validator accepts the next patch or next minor version.

## PR revisions and job boundaries

Selection compares the PR head with its merge base against the PR base. It uses local Git with NUL-delimited paths, not a truncated API file list. Rename detection is disabled so both the deleted and added path participate in selection. This catches, for example, an addon file renamed into a documentation directory. Unrelated changes on an advancing base do not appear in the PR's selected paths. A failed Git comparison fails planning instead of silently skipping tests.

The jobs test GitHub's checked-out PR merge revision. On `main` and manual runs, selection is forced to full coverage. The workflow has no top-level path filter, so documentation changes still produce the required check.

Journeys use the existing `FGM_MATRIX_CLASS` selector in nine independent jobs: classes 1, 2, 3, 4, 5, 7, 8, 9, and 11. Every shard sets `FGM_FULL_MATRIX=1` and runs every race for its class. The existing dungeon handoff cases also run in each shard. Matrix fail-fast is disabled so one failure does not cancel the other coverage.

The Lua job runs the six existing non-journey suites, authored guide contracts, and dungeon/raid walkthroughs. The package job retains compilation, install-tree checks, build file selection, and the BigWigs packager dry run. No upload or deployment step was added. Action references are pinned to verified commits; the repository's weekly GitHub Actions Dependabot configuration continues to maintain them.

GitHub documents [job outputs](https://docs.github.com/en/actions/how-tos/write-workflows/choose-what-workflows-do/pass-job-outputs) and the [`always()` dependency condition](https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#jobsjob_idneeds) used by the final gate.

## Local checks and full runs

Inspect the checks for example paths:

```sh
python3 tools/ci_checks.py --paths README.md
python3 tools/ci_checks.py --paths Guides/Leveling/mulgore.lua
python3 tools/ci_checks.py --paths tools/compile_addon.py
```

Inspect a committed PR diff, or force all flags:

```sh
python3 tools/ci_checks.py --base origin/main --head HEAD
python3 tools/ci_checks.py --full
```

The selector reports flags; it does not execute the selected tests. Run the suite commands in [DEVELOPMENT.md](DEVELOPMENT.md) for full local verification. Test the selector and gate with:

```sh
python3 -m unittest discover -s tests -p test_ci_checks.py
```

On GitHub, choose **Actions > CI > Run workflow** and select the branch. A manual run always requests the full suite, regardless of changed paths. CI's planning summary lists the selected checks, and individual job steps show their durations.

## Measurements and remaining remote verification

Before this change, [PR #143's CI job](https://github.com/TylerAkins/forever-guide-mate/actions/runs/38452686322/job/115487347314) took 10m24s from job start to completion. Its combined Lua step took 9m33s. The guide-change CI job for [PR #142](https://github.com/TylerAkins/forever-guide-mate/actions/runs/38414072757) took 10m49s. These are actual GitHub timings, including job setup and cleanup, but excluding queue time.

Local measurements on October 16, 2026 used Python and LuaJIT 2.1.1791988261 on the developer machine. They are not GitHub runner timings. Representative selected workloads, excluding hosted-runner setup, release planning, and the external packager action, measured:

| Selected workload | Local duration |
| --- | ---: |
| Documentation: Python discovery, no Lua or packaging | 3.606s |
| Compiler tooling: Python discovery, compilation, build dry run | 3.992s |
| Full journey matrix, serial | 121.501s |
| All nine class journey shards, concurrent | 27.126s |

The nine shards cover 188 unique journey contexts and 227,336 unique observed actions, matching the existing full matrix. The repeated dungeon handoff cases are counted once in that comparison.

After-change GitHub durations remain pending the first authorized push. Compare documentation-only, guide, and engine PR runs with the baselines above, including runner setup, queue time, and total runner minutes. Local concurrency cannot establish a hosted CI speedup. The rewritten workflow has not been dispatched remotely, and the external packager action has not been executed locally.
