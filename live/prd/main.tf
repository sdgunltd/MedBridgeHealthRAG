module "rg" {
  source              = "../../modules/resourcegroups"
  resource_group_name = local.resource_group_name
  location            = var.location
  tags                = local.global_tags
}