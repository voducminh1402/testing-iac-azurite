variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resource should be created"
  type        = string
}

variable "account_tier" {
  description = "Defines the storage account performance tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Defines the storage account replication type"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags for the storage account"
  type        = map(string)
  default     = {}
}
