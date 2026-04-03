output "app_subnet_id" {
  value = azurerm_subnet.vnet_1_app_subnet.id
}

output "pep_subnet_id" {
  value = azurerm_subnet.vnet_1_pep_subnet.id
}