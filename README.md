<div align="center" markdown="1">

# [`ci-actions-common`][url-repo]

[![License][shield-license]][url-license]

Github actions for [shishifubing][url-owner] repositories

</div>

## [terraform]

- run `terraform plan` on PR and leave a comment
- run `terraform apply` after merge

### Usage

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

<!-- project links -->

[url-license]: https://github.com/shishifubing/ci-actions-common/blob/main/LICENSE
[url-repo]: https://github.com/shishifubing/ci-actions-common

<!-- external links -->

[url-owner]: https://github.com/shishifubing

<!-- project shield links -->

[shield-license]: https://img.shields.io/github/license/shishifubing/ci-actions-common.svg?style=for-the-badge
