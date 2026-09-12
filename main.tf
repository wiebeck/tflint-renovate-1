terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.0"
    }
    # will be used in child module
    random = {
      source  = "hashicorp/random"
      version = "3.9.1"
    }
  }
}

resource "null_resource" "example" {
}

module "mymodule" {
  source = "./mymodule"
}
