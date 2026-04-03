resource "azurerm_log_analytics_workspace" "law_1" {
  name                = var.law_1_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku                 = var.law_1_sku
  tags = var.tags
}

resource "azurerm_application_insights" "appinsights_1" {
  name                = var.appinsights_1_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  application_type    = var.appinsights_1_application_type
  tags                = var.tags
  workspace_id = azurerm_log_analytics_workspace.law_1.id
}