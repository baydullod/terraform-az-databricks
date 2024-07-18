module "example" {
  source                      = "../../modules/az-databricks"
  create_resource_group       = var.create_resource_group
  spoke_resource_group_name   = var.spoke_resource_group_name
  location                    = var.location
  tags                        = var.tags

  create_databricks_workspace = var.create_databricks_workspace
  databricks_workspace_name   = var.databricks_workspace_name
  databricks_sku              = var.databricks_sku
  managed_resource_group_name = var.managed_resource_group_name

  create_storage_account      = var.create_storage_account
  storage_account_name        = var.storage_account_name
  storage_account_tier        = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type

  create_blob_container       = var.create_blob_container
  blob_container_name         = var.blob_container_name
  blob_container_access_type  = var.blob_container_access_type
}
