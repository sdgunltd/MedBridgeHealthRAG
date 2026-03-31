locals {
  global_tags = {
    createdBy   = var.created_by
    createdDate = formatdate("YYYY-MM-DD", timestamp())
    environment = var.environment
  }
  
   # Resource naming convention
  resource_group_name = "azeus_rg_${var.environment}"
}