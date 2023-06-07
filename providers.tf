provider "aws" {
  profile = "<profile>"
  region  = "us-west-2"
}

provider "azurerm" {
  features {}
}

provider "docker" {}