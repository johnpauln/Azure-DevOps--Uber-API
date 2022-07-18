terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstate14828"
    container_name       = "tfstate"
    key                  = "uberapi-terraform.tfstate"
  }
}

provider "azurerm" {
    version = "~> 2.0"
    features {}
}
