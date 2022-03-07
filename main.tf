terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}


provider "azurerm" {
   
   subscription_id = var.subscriptionID
   client_id = var.clientID
   client_secret = var.clientsecret
   tenant_id = var.tenantID

   features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_resource_group" "example1" {
  name     = "example-resources1"
  location = "West Europe"
}

resource "azurerm_resource_group" "example2" {
  name     = "example-resources2"
  location = "West Europe"
}

resource "azurerm_resource_group" "example3" {
  name     = "example-resources3"
  location = "Australia East"
}


resource "azurerm_resource_group" "example4" {
  name     = "example-resources4"
  location = "Australia East"
}