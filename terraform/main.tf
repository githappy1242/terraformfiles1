terraform {
  backend "azurerm" {
    subscription_id = "3f56b8b1-6232-47b8-94de-7285a95e0c7f"
    resource_group_name = "rg-bootcamp-Niklas-Kehr"
    storage_account_name = "tfstatenk"
    container_name = "containernk"
    key = "bookservice.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

