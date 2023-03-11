<div align="center" markdown="1">

# [`ci-actions-common`][url-repo]

[![License][badge-license]][url-license]
[![Version][badge-version]][url-version]
[![Release][badge-release]][url-release]

Github actions and reusable workflows for [shishifubing][url-owner] repositories

</div>

## Required workflows

### [actionlint]

- Lint github workflows using [rhysd/actionlint][url-actionlint]
  (only if something in .github folder was changed)

### [labeler-pr-triage]

- Label PR using [actions/labeler][url-prlabeler]
- Add a size label to PR using [CodelyTV/pr-size-labeler][url-prsizelabeler]

## Reusable workflows

### [tag]

- Determine current version using [GitVersion][url-gitversion] and
  [GitVersion action][url-gitversion-action] (GitVersion config - [.github/GitVersion.yml])
- Create a signed tag
- Push it

```yml
name: Create a tag
on:
  push:
    branches:
      - main
jobs:
  tag:
    uses: shishifubing/ci-actions-common/.github/workflows/tag.yml@f863ce302be8dd9b0a5a4245b50858b07b4066bf # v0.6.1
    secrets: inherit
```

### [changelog-update]

- Get release notes from the latest release
- Update CHANGELOG.md, sign the commit
- Create a pull request
- Merge it

```yml
name: changelog-update
on:
  release:
    types: [released]
jobs:
  update:
    uses: shishifubing/ci-actions-common/.github/workflows/changelog-update.yml@f863ce302be8dd9b0a5a4245b50858b07b4066bf # v0.6.1
    secrets: inherit
```

### [release]

- Get release info
- Publish a release (if there is a need to)

```yml
name: release
on:
  schedule:
    # daily at 23:00 UTC
    - cron: 0 23 * * *
jobs:
  update:
    uses: shishifubing/ci-actions-common/.github/workflows/release.yml@f863ce302be8dd9b0a5a4245b50858b07b4066bf # v0.6.1
    secrets: inherit
```

## Actions

### [terraform]

- Run `terraform plan` on PR and leave a comment
- Run `terraform apply` after merge

```yml
name: terraform
on:
  push:
    branches:
      - main
  pull_request:
jobs:
  call:
    runs-on: ubuntu-latest
    container:
      image: hashicorp/terraform:1.3.7
    steps:
      - name: Run terraform
        uses: shishifubing/ci-actions-common/actions/terraform@f863ce302be8dd9b0a5a4245b50858b07b4066bf # v0.6.1
        with:
          working_directory: cloud/yandex
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.TERRAFORM_BUCKET_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.TERRAFORM_BUCKET_KEY }}
          TF_VAR_authorized_key: ${{ secrets.YC_MAIN_ADMIN_AUTHORIZED_KEY }}
          TF_VAR_authorized_key_bucket: ${{ secrets.YC_BUCKET_ADMIN_AUTHORIZED_KEY }}
          TF_VAR_static_key_id_bucket: ${{ secrets.YC_BUCKET_ADMIN_STATIC_KEY_ID }}
          TF_VAR_static_key_bucket: ${{ secrets.YC_BUCKET_ADMIN_STATIC_KEY }}
```

### [release][action-release]

- Check whether the last tag is released
- Generate release notes

```yaml
name: release

on:
  schedule:
    # daily at 23:00 UTC
    - cron: 0 23 * * *
  workflow_dispatch:

jobs:
  build:
    uses: ./.github/workflows/build.yml
    secrets: inherit

  release:
    name: Publish a release
    runs-on: ubuntu-latest
    needs: build

    steps:
      - name: Get release info
        id: info
        uses: shishifubing/ci-actions-common/actions/release-info@48ce595debac2eb5f2fb18ed3e86ea01f1ea23ca # v0.6.5
        env:
          GH_TOKEN: ${{ github.token }}
          
      - name: Download artifacts
        uses: actions/download-artifact@9bc31d5ccc31df68ecc42ccf4149144866c47d8a # v3.0.2
        with:
          path: _release

      - name: Create a release
        uses: softprops/action-gh-release@de2c0eb89ae2a093876385947365aca7b0e5f844 # v0.1.15
        if: steps.info.outputs.create == 'true'
        with:
          # events triggered by GitHub Actions don't trigger GitHub Actions, so
          # you need to pass a custom token to trigger changelog workflow
          token: ${{ secrets.CI_GITHUB_TOKEN }}
          tag_name: ${{ steps.info.outputs.version }}
          name: ${{ steps.info.outputs.name }}
          body: ${{ steps.info.outputs.body }}
          files: _release/**/*
```

<!-- relative links -->

[terraform]: actions/terraform/action.yml
[tag]: .github/workflows/tag.yml
[actionlint]: .github/workflows/actionlint.yml
[.github/gitversion.yml]: .github/GitVersion.yml
[labeler-issue-triage]: .github/workflows/labeler-issue-triage.yml
[labeler-pr-triage]: .github/workflows/labeler-pr-triage.yml
[changelog-update]: .github/workflows/changelog-update.yml
[release]: .github/workflows/release.yml
[action-release]: actions/release-info/action.yml

<!-- project links -->

[url-license]: https://github.com/shishifubing/ci-actions-common/blob/main/LICENSE
[url-repo]: https://github.com/shishifubing/ci-actions-common
[url-release]: https://github.com/shishifubing/ci-actions-common/actions/workflows/release.yml
[url-version]: https://github.com/shishifubing/ci-actions-common/releases/latest

<!-- external links -->

[url-owner]: https://github.com/shishifubing
[url-conventionalcommits]: https://conventionalcommits.org
[url-gitversion-action]: https://github.com/GitTools/actions
[url-gitversion]: https://github.com/GitTools/GitVersion
[url-actionlint]: https://github.com/rhysd/actionlint
[url-issuelabeler]: https://github.com/github/issue-labeler
[url-prlabeler]: https://github.com/actions/labeler
[url-prsizelabeler]: https://github.com/CodelyTV/pr-size-labeler

<!-- project badge links -->

[badge-license]: https://img.shields.io/github/license/shishifubing/ci-actions-common.svg
[badge-release]: https://github.com/shishifubing/ci-actions-common/actions/workflows/release.yml/badge.svg?branch=main
[badge-version]: https://img.shields.io/github/v/release/shishifubing/ci-actions-common?label=version
