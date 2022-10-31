terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.0"
    }
  }
}

provider "null" {
}

resource "null_resource" "foo" {
}
