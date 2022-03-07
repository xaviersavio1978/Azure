terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"

      subscriptio_id = var.subscriptionID
client_id =var.clientID
client_secret = var.clientSecret
tenant_id =var.tenantID
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}