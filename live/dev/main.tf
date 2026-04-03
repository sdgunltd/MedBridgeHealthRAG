module "rg" {
  source              = "../../modules/resourcegroups"
  resource_group_name = local.resource_group_name
  location            = var.location
  tags                = local.global_tags
}

module "network_core" {
  source = "../../modules/network_core"
  virtual_ntw_1           = "${var.virtual_ntw_1}_${local.global_tags.environment}"
  vnet_1_address_space = var.vnet_1_address_space
  vnet_1_subnet_apps = var.vnet_1_subnet_apps
  vnet_1_subnet_apps_prefixes = var.vnet_1_subnet_apps_prefixes
  vnet_1_subnet_pep = var.vnet_1_subnet_pep
  vnet_1_subnet_pep_prefixes = var.vnet_1_subnet_pep_prefixes
  tags = local.global_tags
  resource_group_name = module.rg.rg_name
  resource_group_location = module.rg.rg_location
}

module "monitors" {
  source = "../../modules/monitors"
  law_1_name = "${var.law_1_name}-${local.global_tags.environment}"
  law_1_sku = var.law_1_sku
  appinsights_1_name = "${var.appinsights_1_name}_${local.global_tags.environment}"
  appinsights_1_application_type = var.appinsights_1_application_type
  tags = local.global_tags
  resource_group_name = module.rg.rg_name
  resource_group_location = module.rg.rg_location
}

module "storage" {
  source = "../../modules/storage"
  sa_1_name = var.sa_1_name
  sa_1_account_tier = var.sa_1_account_tier
  sa_1_account_replication_type = var.sa_1_account_replication_type
  sa_1_public_network_access_enabled = var.sa_1_public_network_access_enabled
  sa_1_pe_name = var.sa_1_pe_name
  sa_1_pe_connection_name = var.sa_1_pe_connection_name
  sa_1_pe_is_manual_connection = var.sa_1_pe_is_manual_connection
  sa_1_pe_subresource_names = var.sa_1_pe_subresource_names
  pep_subnet_id = module.network_core.pep_subnet_id
  default_to_oauth_authentication = var.default_to_oauth_authentication
  tags = local.global_tags
  resource_group_name = module.rg.rg_name
  resource_group_location = module.rg.rg_location
}