terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dkc-state-rg"
    storage_account_name = "dkcstatestg123"
    container_name       = "statefiles"
    key                  = "prod.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c0748677-9808-4356-8816-dc8088c5bb59"
}
