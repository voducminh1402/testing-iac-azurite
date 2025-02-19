variable "cosmos_dbs" {
  description = "List of Cosmos DB accounts to create"
  type = map(object({
    cosmos_db_name        = string
    resource_group_name   = string
    location             = string
    kind                 = string
    consistency_level     = string
    max_interval_in_seconds = number
    max_staleness_prefix = number
    tags                 = map(string)
  }))
}

module "cosmos_dbs" {
  source = "../modules/cosmos_db"
  for_each = var.cosmos_dbs

  cosmos_db_name        = each.value.cosmos_db_name
  resource_group_name   = each.value.resource_group_name
  location             = each.value.location
  kind                 = each.value.kind
  consistency_level     = each.value.consistency_level
  max_interval_in_seconds = each.value.max_interval_in_seconds
  max_staleness_prefix = each.value.max_staleness_prefix
  tags                 = each.value.tags
}
