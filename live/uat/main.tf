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