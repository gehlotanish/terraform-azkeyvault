variable "location" {
  type        = string
  description = "Azure Region location"
}

variable "azurerm_resource_group_name" {
  type        = string
  description = "Azure Resource Group Name"
}

variable "keyvault_name" {
  type        = string
  description = "Azure keyvault Name"
}

variable "environment" {
  type        = string
  description = "Resource Tags ENVIRONMENT Value"
}

variable "sku_name" {
  type        = string
  description = "KeyVault SKU Name. Possible values are standard and premium"
}

variable "purge_protection" {
  type        = string
  description = "Defaults to false, Once Purge Protection has been Enabled it's not possible to Disable it"
  default     = "false"
}

variable "log_analytics_name" {
  type        = string
  description = "Azure Existing log analytics name"
}

variable "kv_diagnostic_name" {
  type        = string
  description = "Key Vault log diagnostic name"
}

