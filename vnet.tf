

module "vnet" {
  source              = "Azure/vnet/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  vnet_name = "prodvnet"
  address_space       = ["10.0.0.0/16"]
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["vcaresubnet", "payglobalsubnet", "greenteasubnet"]

  subnet_service_endpoints = {
    vcaresubnet = ["Microsoft.Storage", "Microsoft.Sql"],
    payglobalsubnet = ["Microsoft.AzureActiveDirectory"]
  }

  tags = {
    environment = "prod"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.example]
}