output "cosmos_db_id" {
  description = "The ID of the Cosmos DB account"
  value       = azurerm_cosmosdb_account.this.id
}
