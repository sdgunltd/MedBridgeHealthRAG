module "rg" {
  source              = "../../modules/resource_group"
  resource_group_name = local.resource_group_name
  location            = var.location
  tags                = local.global_tags
}