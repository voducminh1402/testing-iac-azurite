variable "storage_accounts" {
  description = "List of storage accounts to create"
  type = map(object({
    storage_account_name   = string
    resource_group_name    = string
    location               = string
    account_tier           = string
    account_replication_type = string
    enable_https_traffic_only = bool
    tags                   = map(string)
  }))
}

module "storage_accounts" {
  source = "../modules/storage_account"
  for_each = var.storage_accounts

  storage_account_name   = each.value.storage_account_name
  resource_group_name    = each.value.resource_group_name
  location               = each.value.location
  account_tier           = each.value.account_tier
  account_replication_type = each.value.account_replication_type
  enable_https_traffic_only = each.value.enable_https_traffic_only
  tags                   = each.value.tags
}
