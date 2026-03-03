terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "d8cc2ff0-4966-4b41-849d-de4d01f122c5"
}