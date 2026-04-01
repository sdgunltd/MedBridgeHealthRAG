variable "created_by" {
  description = "Name or identifier of who deployed this infrastructure"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, uat, or prd only)"
  type        = string

  validation {
    condition     = contains(["dev", "uat", "prd"], var.environment)
    error_message = "Environment must be 'dev', 'uat', or 'prd'."
  }
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

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
