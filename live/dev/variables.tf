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

variable "law_1_name" {
    description = "Name of the Log Analytics Workspace"
    type        = string
}

variable "law_1_sku" {
    description = "SKU of the Log Analytics Workspace (e.g., 'PerGB2018')"
    type        = string
}

variable "appinsights_1_name" {
    description = "Name of the Application Insights resource"
    type        = string
}

variable "appinsights_1_application_type" {
    description = "Application type for Application Insights (e.g., 'web')"
    type        = string
}

variable "sa_1_name" {
  description = "storage account name"
    type        = string
}

variable "sa_1_account_tier" {
  description = "storage account tier (e.g., 'Standard' or 'Premium')"
    type        = string
}

variable "sa_1_account_replication_type" {
  description = "storage account replication type (e.g., 'LRS', 'GRS', 'RAGRS')"
    type        = string
}

variable "sa_1_public_network_access_enabled" {
  description = "Enable or disable public network access for the storage account"
    type        = bool
}

variable "sa_1_pe_name" {
  description = "Name of the private endpoint for the storage account"
    type        = string
}

variable "sa_1_pe_connection_name" {
  description = "Name of the private service connection for the storage account private endpoint"
    type        = string
}

variable "sa_1_pe_subresource_names" {
  description = "List of subresource names for the storage account private endpoint (e.g., ['blob', 'file'])"
    type        = list(string)
}

variable "sa_1_pe_is_manual_connection" {
  description = "Indicates whether the private endpoint connection is manual (true) or automatic (false)"
    type        = bool
}

variable "default_to_oauth_authentication" {
  description = "enable oauth for sa_1"
  type = bool
}