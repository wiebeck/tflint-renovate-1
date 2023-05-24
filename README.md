# TFLint + Renovate Example 1

## Setup

We're using our "traditional" Terraform config:

- all providers are listed in the root module with explicit version numbers
- child modules also list the providers they need but omit the version number

## Observation

- ✅ Renovate properly updates all providers because they are listed in the root module
- ✅ Renovate updates both the .tf files and the lock file
- ❌ TFLint is unhappy because we need to list providers in the root module that are effectively unused for this module

## Workarounds

- We can specify an empty provider configuration block for the "unused" provider. This makes TFLint think the provider is actually being used.
- We can disable the `terraform_unused_required_providers` rule for TFLint.
