variable "resource_group_name" {
  description = "Base name of the Azure Resource Group"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev, test, prod, uat)"
  type        = string

  validation {
    condition     = contains(["dev", "test", "qa", "prod"], var.environment)
    error_message = "Environment must be one of: dev, test, qa, prod."
  }
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to the Resource Group"
  type        = map(string)
  default     = {}
}
