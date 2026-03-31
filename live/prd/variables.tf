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