variable "virtual_ntw_1" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_1_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "vnet_1_subnet_apps" {
  description = "Name of the applications subnet"
  type        = string
}

variable "vnet_1_subnet_apps_prefixes" {
  description = "Address prefixes for the applications subnet"
  type        = list(string)
}

variable "vnet_1_subnet_pep" {
  description = "Name of the PEP subnet"
  type        = string
}

variable "vnet_1_subnet_pep_prefixes" {
  description = "Address prefixes for the PEP subnet"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the resource group"
  type        = map(string)
  default     = {}
}

variable "resource_group_name" {
  description = "resource group name"
  type = string
}

variable "resource_group_location" {
  description = "location of resource group"
  type = string
}