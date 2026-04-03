resource "azurerm_storage_account" "sa_1" {
  name = var.sa_1_name
  resource_group_name = var.resource_group_name
    location = var.resource_group_location
    account_tier = var.sa_1_account_tier
    account_replication_type = var.sa_1_account_replication_type
  public_network_access_enabled = var.sa_1_public_network_access_enabled
default_to_oauth_authentication = var.default_to_oauth_authentication
  tags = var.tags
}

resource "azurerm_private_endpoint" "sa_1_pe" {
    name                = var.sa_1_pe_name
    location            = var.resource_group_location
    resource_group_name = var.resource_group_name
    subnet_id           = var.pep_subnet_id

    private_service_connection {
        name                           = var.sa_1_pe_connection_name
        private_connection_resource_id = azurerm_storage_account.sa_1.id
        subresource_names              = var.sa_1_pe_subresource_names
        is_manual_connection           = var.sa_1_pe_is_manual_connection
    }

    tags = var.tags
}