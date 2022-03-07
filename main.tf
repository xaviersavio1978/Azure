terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"

      
    }
  }
}

provider "azurerm" {
   features {}
   subscription_id = var.subscription_id
   client_id =var.client_id
   client_secret = var.client_secret
   tenant_id =var.tenant_id
   
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "example-resources1"
  location = "West Europe"
}