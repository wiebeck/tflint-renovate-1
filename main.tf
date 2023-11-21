terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
    # will be used in child module
    random = {
      source  = "hashicorp/random"
      version = "3.5.0"
    }
  }
}

resource "null_resource" "example" {
}

module "mymodule" {
  source = "./mymodule"
}
