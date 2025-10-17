terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "test-rg"
    storage_account_name = "yteststg4343"
    container_name       = "test"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "b3e9b690-1f69-4cae-899a-6a1c65b2db91"
}

resource "azurerm_resource_group" "rg" {
  name     = "y-rg"
  location = "East US"
}
