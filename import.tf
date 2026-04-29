terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform"
    storage_account_name = "raju089"
    container_name       = "content1"
    key                  = "productiondr-route-table.tfstate"
   subscription_id      = "7f9ffab5-15de-40df-80c3-9f0897275cd1"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7f9ffab5-15de-40df-80c3-9f0897275cd1"
}

import {
  to = azurerm_route_table.route_block
  id = "/subscriptions/7f9ffab5-15de-40df-80c3-9f0897275cd1/resourceGroups/myrg/providers/Microsoft.Network/routeTables/rt-proddr-br-apgtwsnet"
}
