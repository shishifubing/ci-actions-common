# CHANGELOG

## v1.2.1 - 2023-03-12

### Features

- **required**: add concurrency to required workflows by @tiandaoburen in [#100](https://github.com/shishifubing/ci-actions-common/pull/100)

### Bug Fixes

- **release**: emphasize breaking changes in changelog by @tiandaoburen in [#99](https://github.com/shishifubing/ci-actions-common/pull/99)
- **required**: fix concurrency group names by @tiandaoburen in [#101](https://github.com/shishifubing/ci-actions-common/pull/101)

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v1.0.2...v1.2.1

## v1.0.2 - 2023-03-12

### Breaking Change

- feat(- ****: rename workflows by @tiandaoburen in [#94](https://github.com/shishifubing/ci-actions-common/pull/94)

### Feature

- **release-info**: create reusable workflow by @tiandaoburen in [#93](https://github.com/shishifubing/ci-actions-common/pull/93)

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.6.26...v1.0.2

## v0.6.26 - 2023-03-11

### Feature

- **required**: create pr-title-lint workfllow by @tiandaoburen in [#89](https://github.com/shishifubing/ci-actions-common/pull/89)

### Bug Fix

- **changelog**: specify title of PR by @tiandaoburen in [#90](https://github.com/shishifubing/ci-actions-common/pull/90)
- **pr-title-lint**: remove on.pull_request_target by @tiandaoburen in [#91](https://github.com/shishifubing/ci-actions-common/pull/91)

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.6.20...v0.6.26

## v0.6.20 - 2023-03-11

### Feature

- **release**: use release-changelog-builder-action for releases by @tiandaoburen in [#78](https://github.com/shishifubing/ci-actions-common/pull/78)

### Improvement

- **release**: add ignore_labels by @tiandaoburen in [#84](https://github.com/shishifubing/ci-actions-common/pull/84)
- **release**: remove useless categories by @tiandaoburen in [#83](https://github.com/shishifubing/ci-actions-common/pull/83)
- **release**: upload release assets by @tiandaoburen in [#74](https://github.com/shishifubing/ci-actions-common/pull/74)

### Bug Fix

- **changelog-update**: use default PR title by @tiandaoburen in [#79](https://github.com/shishifubing/ci-actions-common/pull/79)
- **changelog**: add 'skip ci' to the commit message by @tiandaoburen in [#73](https://github.com/shishifubing/ci-actions-common/pull/73)
- **changelog**: do not automerge pr by @tiandaoburen in [#75](https://github.com/shishifubing/ci-actions-common/pull/75)
- **changelog**: remove 'skip ci' from commit message by @tiandaoburen in [#77](https://github.com/shishifubing/ci-actions-common/pull/77)
- **release**: set correct action branch by @tiandaoburen in [#82](https://github.com/shishifubing/ci-actions-common/pull/82)
- **workflows**: add on.workflow_call to release and changelog workflows by @tiandaoburen in [#70](https://github.com/shishifubing/ci-actions-common/pull/70)
- **workflows**: replace hashes with branches, automerge PRs by @tiandaoburen in [#76](https://github.com/shishifubing/ci-actions-common/pull/76)
- **workflows**: replace tags with hashes by @tiandaoburen in [#69](https://github.com/shishifubing/ci-actions-common/pull/69)

### Documentation

- **readme**: add info about release-info action by @tiandaoburen in [#71](https://github.com/shishifubing/ci-actions-common/pull/71)

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.1.28...v0.6.20

## v0.6.1 - 2023-03-11

<!-- Release notes generated using configuration in .github/release.yml at v0.6.1 -->
### What's Changed

#### Documentation

- Add v0.1.30 to CHANGELOG.md [skip ci] by @shishifubing-bot in https://github.com/shishifubing/ci-actions-common/pull/64
- Add release action by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/65

#### Automation

- Fix 'if' in release workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/66

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.1.30...v0.6.1

## v0.1.30 - 2023-03-10

<!-- Release notes generated using configuration in .github/release.yml at v0.1.30 -->
### What's Changed

#### Other Changes

- Add --auto to changelog PR merge by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/63

### New Contributors

- @shishifubing-bot made their first contribution in https://github.com/shishifubing/ci-actions-common/pull/62

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.1.28...v0.1.30

## v0.1.28 - 2023-03-10

<!-- Release notes generated using configuration in .github/release.yml at v0.1.28 -->
### What's Changed

#### New Features

- Add actionlint by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/27
- Run actionlint only if .github was changed by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/29
- Check changed files via API by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/30
- Add universal GitVersion config by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/32
- Add a trailing newline to tag messages by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/33
- Add semVer output to reusable tag workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/40

#### Bug Fixes

- Remove on.pull_request.paths from required workflows by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/28
- Restore == by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/31
- Replace standalone spaces in the tag message with U+200E by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/34

#### Documentation

- Add labeler-pr-triage required workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/35
- Fix wording in README.md by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/36
- Fix labeler-pr-triage description by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/37
- Refactor badges, remove size message from pr size workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/51
- Create nightly release workflow, create changelog workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/48
- Add on.workflow_dispatch to nightly workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/60

#### Other Changes

- Add on.workflow_call to issue labeler by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/38
- Change the names of required workflows by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/39
- Add release config by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/41
- Add release workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/42
- Add GH_TOKEN variable by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/43
- Add permission to labeler workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/49
- Change token in actionlint by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/50
- Delete CODEOWNERS by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/55
- Create CODEOWNERS, fix token in changelog workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/59
- Use CI token in nightly workflow by @tiandaoburen in https://github.com/shishifubing/ci-actions-common/pull/61

**Full Changelog**: https://github.com/shishifubing/ci-actions-common/compare/v0.1.0...v0.1.28
