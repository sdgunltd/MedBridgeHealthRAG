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