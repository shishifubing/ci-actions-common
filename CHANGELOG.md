# CHANGELOG

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
