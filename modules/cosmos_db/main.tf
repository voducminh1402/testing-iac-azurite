resource "azurerm_cosmosdb_account" "this" {
  name                = var.cosmos_db_name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"

  kind = var.kind

  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }

  tags = var.tags
}
