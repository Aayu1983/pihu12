terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "stgpractic12345"
    container_name       = "mycontainer"
    key                  = "prod-route-table.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5e2ade1f-9bb8-4b4f-874f-5fd49f66c2fa"
}



resource "azurerm_route_table" "route_table" {


}
