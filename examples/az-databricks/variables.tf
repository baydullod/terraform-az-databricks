variable "create_resource_group" {
  description = "Whether to create a new resource group"
  type        = bool
  default     = null
}

variable "spoke_resource_group_name" {
  description = "Name of the spoke resource group"
  type        = string
}

variable "location" {
  description = "Azure region where the resources should be created"
  type        = string
}

variable "tags" {
  description = "Tags to be applied to the resources"
  type        = map(string)
  default     = {}
}

variable "create_databricks_workspace" {
  description = "Whether to create a Databricks workspace"
  type        = bool
  default     = null
}

variable "databricks_workspace_name" {
  description = "Name of the Databricks workspace"
  type        = string
}

variable "managed_resource_group_name" {
  description = "Managed resource group name for Databricks"
  type        = string
  default     = ""
}

variable "databricks_sku" {
  description = "SKU for the Databricks workspace"
  type        = string
}

variable "create_storage_account" {
  description = "Whether to create a new storage account"
  type        = bool
  default     = null
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "storage_account_tier" {
  description = "Tier of the storage account"
  type        = string
}

variable "storage_account_replication_type" {
  description = "Replication type for the storage account"
  type        = string
}

variable "create_blob_container" {
  description = "Whether to create a new blob container"
  type        = bool
  default     = null
}

variable "blob_container_name" {
  description = "Name of the blob container"
  type        = string
}

variable "blob_container_access_type" {
  description = "Access type for the blob container"
  type        = string
}
