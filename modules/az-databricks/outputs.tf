# Output for the Resource Group
output "resource_group_name" {
  value       = local.rg_name
  description = "The name of the resource group"
}

output "resource_group_id" {
  value       = local.rg_id
  description = "The ID of the resource group"
}

output "resource_group_location" {
  value       = local.rg_location
  description = "The location of the resource group"
}

# Output for the Databricks Workspace
output "databricks_workspace_id" {
  value       = try(azurerm_databricks_workspace.this[0].id, null)
  description = "The ID of the Databricks workspace"
}

# Output for the Storage Account
output "storage_account_name" {
  value       = try(azurerm_storage_account.this[0].name, null)
  description = "The name of the storage account"
}

output "storage_account_id" {
  value       = try(azurerm_storage_account.this[0].id, null)
  description = "The ID of the storage account"
}

# Output for the Blob Container
output "blob_container_name" {
  value       = try(azurerm_storage_container.this[0].name, null)
  description = "The name of the blob container"
}

output "blob_container_id" {
  value       = try(azurerm_storage_container.this[0].id, null)
  description = "The ID of the blob container"
}
