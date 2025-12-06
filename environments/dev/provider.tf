terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dkc_state_rg"
    storage_account_name = "dkcstatestg01"
    container_name       = "statefile"
    key                  = "dkdev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "009fad33-c09c-4841-af38-57dd79870d40"
}
