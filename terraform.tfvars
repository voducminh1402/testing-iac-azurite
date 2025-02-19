storage_accounts = {
  storageaccount1 = {
    storage_account_name   = "storageacc1"
    resource_group_name    = "my-resource-group"
    location               = "eastus"
    account_tier           = "Standard"
    account_replication_type = "LRS"
    enable_https_traffic_only = true
    tags = {
      environment = "dev"
      owner       = "team1"
    }
  }
  storageaccount2 = {
    storage_account_name   = "storageacc2"
    resource_group_name    = "my-resource-group"
    location               = "westus"
    account_tier           = "Premium"
    account_replication_type = "GRS"
    enable_https_traffic_only = true
    tags = {
      environment = "prod"
      owner       = "team2"
    }
  }
}

cosmos_dbs = {
  cosmosdb1 = {
    cosmos_db_name        = "cosmosdb1"
    resource_group_name   = "my-resource-group"
    location             = "eastus"
    kind                 = "GlobalDocumentDB"
    consistency_level     = "Session"
    max_interval_in_seconds = 5
    max_staleness_prefix = 100
    tags = {
      environment = "dev"
      owner       = "team1"
    }
  }
  cosmosdb2 = {
    cosmos_db_name        = "cosmosdb2"
    resource_group_name   = "my-resource-group"
    location             = "westus"
    kind                 = "GlobalDocumentDB"
    consistency_level     = "Strong"
    max_interval_in_seconds = 10
    max_staleness_prefix = 200
    tags = {
      environment = "prod"
      owner       = "team2"
    }
  }
}
