# terraform-deployment-with-environments-example

An example Terraform project demonstrating continuous deployment pipeline using GitHub Actions' environment function. 

## Overview

- Deployment workflow runs every time `main` branch is updated. It first runs `terraform plan` and require a manual approval. `terraform apply` will be executed when the job is approved.
- Preview workflow runs `terraform plan` for each pull request and comment the plan result. The comment is updated when new commits are added to the pull request.

## Prerequisites

- Create two environments `production` and `production-readonly`.
    - Set required reviewers to `production` environment.
    - Associate credentials which has sufficient permissions to run `terraform plan` to `production-readonly` environment.
    - Associate credentials which has sufficient permissions to run `terraform apply` to `production` environment.
- Terraform project is assumed to have [a non-local backend](https://www.terraform.io/cdktf/concepts/remote-backends) to host state files.

## References

- [Using environments for deployment | GitHub Docs](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment)
- [Backend Overview | Terraform](https://www.terraform.io/language/settings/backends)