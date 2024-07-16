
#Azure Resouce Group
resource "azurerm_resource_group" "this" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.spoke_resource_group_name
  location = var.location
  tags     = var.tags
}

data "azurerm_resource_group" "this" {
  count = var.create_resource_group ? 0 : 1
  name  = var.spoke_resource_group_name
}

locals {
  rg_name     = var.create_resource_group ? azurerm_resource_group.this[0].name : data.azurerm_resource_group.this[0].name
  rg_id       = var.create_resource_group ? azurerm_resource_group.this[0].id : data.azurerm_resource_group.this[0].id
  rg_location = var.create_resource_group ? azurerm_resource_group.this[0].location : data.azurerm_resource_group.this[0].location
}

data "azurerm_client_config" "current" {
}


#Databrciks Workspace

locals {
  managed_resource_group_name = var.managed_resource_group_name == "" ? "${var.databricks_workspace_name}-managed-rg" : var.managed_resource_group_name
}

resource "azurerm_databricks_workspace" "this" {
  count                       = var.create_databricks_workspace ? 1 : 0
  name                        = var.databricks_workspace_name
  resource_group_name         = var.spoke_resource_group_name
  managed_resource_group_name = local.managed_resource_group_name
  location                    = var.location
  sku                         = var.databricks_sku
  tags                        = var.tags

  # Explicit dependency on the resource group
  depends_on = [azurerm_resource_group.this]
}

#Azure Storage Account
resource "azurerm_storage_account" "this" {
  count                    = var.create_storage_account ? 1 : 0
  name                     = var.storage_account_name
  resource_group_name      = var.spoke_resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = var.tags
}
#Azure Blob Container
resource "azurerm_storage_container" "this" {
  count                 = var.create_blob_container ? 1 : 0
  name                  = var.blob_container_name
  storage_account_name  = var.create_storage_account ? azurerm_storage_account.this[0].name : ""
  container_access_type = var.blob_container_access_type
}
