resource "azurerm_virtual_network" "vnet_1" {
  name                = var.virtual_ntw_1
  address_space       = var.vnet_1_address_space
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_subnet" "vnet_1_app_subnet" {
  name                 = var.vnet_1_subnet_apps
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet_1.name
  address_prefixes     = var.vnet_1_subnet_apps_prefixes
}


resource "azurerm_subnet" "vnet_1_pep_subnet" {
  name                 = var.vnet_1_subnet_pep
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet_1.name
  address_prefixes     = var.vnet_1_subnet_pep_prefixes
}
