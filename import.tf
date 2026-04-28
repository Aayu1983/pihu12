terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "prodansh"
    storage_account_name = "ansh09876"
    container_name       = "aayu"
    key                  = "appinside.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "7f9ffab5-15de-40df-80c3-9f0897275cd1"
}

import {
  to = azurerm_app_service_plan.app_block
  id = "/subscriptions/7f9ffab5-15de-40df-80c3-9f0897275cd1/resourceGroups/prodansh/providers/microsoft.insights/components/appinsight"
}
