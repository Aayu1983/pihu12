terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {
    key = "productiondr-route-table.tfstate"
  }
}

provider "azurerm" {
  features {}

}
