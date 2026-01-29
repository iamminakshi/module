variable "storage_account_name" {
  description = "Name of the storage account (must be globally unique)"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where the storage account will be created"
  type        = string
}

variable "location" {
  description = "Azure region for the storage account"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, test, prod)"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type (LRS, GRS, ZRS, etc.)"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
