<div align="center" markdown="1">

# [`ci-actions-common`][url-repo]

[![License][shield-license]][url-license]

Github actions for [shishifubing][url-owner] repositories

</div>

## Workflows

### [pr_conventional_title_check]

- Check whether a PR title follows  [Conventional Commits specification][url-conventional-commits-spec]

> **Note**
>
> It is a [required workflow](url-required-workflows)
>
> It uses https://github.com/amannn/action-semantic-pull-request

## Actions

### [terraform]

- Run `terraform plan` on PR and leave a comment
- Run `terraform apply` after merge

#### Usage

```yml
name: "terraform"
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
      - name: run terraform
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
[pr_conventional_title_check]: ./.github/workflows/


<!-- project links -->

[url-license]: https://github.com/shishifubing/ci-actions-common/blob/main/LICENSE
[url-repo]: https://github.com/shishifubing/ci-actions-common

<!-- external links -->

[url-owner]: https://github.com/shishifubing
[url-conventional-commits-spec]: https://www.conventionalcommits.org/en/v1.0.0/
[url-required-workflows]: https://docs.github.com/en/actions/using-workflows/required-workflows

<!-- project shield links -->

[shield-license]: https://img.shields.io/github/license/shishifubing/ci-actions-common.svg?style=for-the-badge
