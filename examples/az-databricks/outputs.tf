output "resource_group_name" {
  description = "The name of the resource group"
  value       = module.example.resource_group_name
}

output "databricks_workspace_id" {
  description = "The ID of the Databricks workspace"
  value       = module.example.databricks_workspace_id
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.example.storage_account_name
}
