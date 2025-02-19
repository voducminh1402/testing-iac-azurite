variable "cosmos_db_name" {
  description = "The name of the Cosmos DB account"
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

variable "kind" {
  description = "The kind of Cosmos DB (e.g., GlobalDocumentDB)"
  type        = string
  default     = "GlobalDocumentDB"
}

variable "consistency_level" {
  description = "The consistency level of the Cosmos DB"
  type        = string
  default     = "Session"
}

variable "max_interval_in_seconds" {
  description = "The maximum interval for the session consistency level"
  type        = number
  default     = 5
}

variable "max_staleness_prefix" {
  description = "The maximum staleness prefix"
  type        = number
  default     = 100
}

variable "tags" {
  description = "Tags for the Cosmos DB"
  type        = map(string)
  default     = {}
}