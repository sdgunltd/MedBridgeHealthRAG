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

variable "pep_subnet_id" {
  description = "ID of the subnet to which the private endpoint will be connected"
    type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
    type        = string
}

variable "resource_group_location" {
  description = "Location of the resource group"
    type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
    type        = map(string)
 }


variable "default_to_oauth_authentication" {
  description = "enable oauth"
  type = bool
}
