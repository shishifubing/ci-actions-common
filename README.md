<a name="readme-top"></a>

# [`ci-actions-common`][repo-url]

<!-- SHIELDS -->
[![AGPLv3.0 License][license-shield]][license]

<!-- ABOUT THE PROJECT -->

Reusable github actions and workflows for [shishifubing][owner-url] repositories

### [terraform.yml]

* `terraform plan` on PR
* `terraform apply` after merge

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

```yml
name: "terraform"

on:
  push:
    branches:
      - main
  pull_request:

jobs:
  call:
    uses: shishifubing/ci-actions-common/.github/workflows/terraform.yml@main
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- internal links -->

[license]: ./LICENSE
[terraform.yml]: ./github/workflows/terraform.yml 

<!-- external links -->

[repo-url]: https://github.com/shishifubing/ci-actions-common
[owner-url]: https://github.com/shishifubing

<!-- project shield links -->

[license-shield]: https://img.shields.io/github/license/shishifubing/ci-actions-common.svg?style=for-the-badge
