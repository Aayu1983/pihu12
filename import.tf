terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "myrg"
    storage_account_name = "mystgs12345678"
    container_name       = "mycontainer"
    key                  = "prod-publicip.tfstate" 
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5e2ade1f-9bb8-4b4f-874f-5fd49f66c2fa"
}



resource "azurerm_public_ip" "imported_ip" {

}
