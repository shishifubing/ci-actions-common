<div align="center" markdown="1">

# [`ci-actions-common`][url-repo]

Github actions and reusable workflows for [shishifubing][url-owner] repositories

[![License][badge-license]][url-license]
[![Conventional Commits][badge-conventionalcommits]][url-conventionalcommits]

</div>

## Required workflows

### [actionlint]

- Lint github workflows using https://github.com/rhysd/actionlint

## Reusable workflows

### [tag]

- Create a tag, sign it, push it

#### Usage

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

#### Usage

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

[terraform]: ./actions/terraform/action.yml
[tag]: ./.github/workflows/tag.yml
[actionlint]: ./.github/workflows/actionlint.yml

<!-- project links -->

[url-license]: https://github.com/shishifubing/ci-actions-common/blob/main/LICENSE
[url-repo]: https://github.com/shishifubing/ci-actions-common

<!-- external links -->

[url-owner]: https://github.com/shishifubing
[url-conventionalcommits]: https://conventionalcommits.org

<!-- project badge links -->

[badge-license]: https://img.shields.io/github/license/shishifubing/ci-actions-common.svg?style=for-the-badge

<!-- other badge links -->

[badge-conventionalcommits]: https://img.shields.io/badge/Conventional%20Commits-1.0.0-%23FE5196?logo=conventionalcommits&logoColor=white&style=for-the-badge
