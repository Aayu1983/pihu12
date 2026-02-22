terraform {
  required_version = ">= 0.14.11"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 4.46.0"
    }
  }
}


provider "azurerm" {
  subscription_id = "42ec333f-2cce-4c5d-b75e-0715575ecabe"
  features {}
}