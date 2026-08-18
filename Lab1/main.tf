terraform {
  required_providers{
    local = {
        source = "hashicorp/local"
        version = "~>2.4"
    }
    random = {
        source = "hashicorp/random"
        version = ">=3.5.0"
    }
    null = {
        source = "hashicorp/null"
        version = "3.2.1"
    }
  }
}

resource "random_string" "example" {
    length = 16
    special = false
}

provider "local" {
}

provider "local" {
    alias = "secondary"
}

resource "local_file" "config_primary" {
    content = "This is the primary local file."
    filename = "config_primary.txt"
}

resource "local_file" "config_secondary" {
    provider = local.secondary
    content = "This is the secondary local file."
    filename = "config_secondary.txt"
}