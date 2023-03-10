<div align="center" markdown="1">

# [`ci-actions-common`][url-repo]

[![License][badge-license]][url-license]
[![Nightly][badge-nightly]][url-nightly]

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
    name: Call a workflow
    uses: shishifubing/ci-actions-common/.github/workflows/tag.yml@main
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
        uses: shishifubing/ci-actions-common/actions/terraform@main
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

<!-- relative links -->

[terraform]: actions/terraform/action.yml
[tag]: .github/workflows/tag.yml
[actionlint]: .github/workflows/actionlint.yml
[.github/gitversion.yml]: .github/GitVersion.yml
[labeler-issue-triage]: .github/workflows/labeler-issue-triage.yml
[labeler-pr-triage]: .github/workflows/labeler-pr-triage.yml

<!-- project links -->

[url-license]: https://github.com/shishifubing/ci-actions-common/blob/main/LICENSE
[url-repo]: https://github.com/shishifubing/ci-actions-common
[url-nightly]: https://github.com/shishifubing/ci-actions-common/actions/workflows/nightly.yml

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
[badge-nightly]: https://github.com/shishifubing/ci-actions-common/actions/workflows/nightly.yml/badge.svg?branch=main
