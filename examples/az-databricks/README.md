
This Terraform module provisions the following Azure resources:
- Resource Group
- Databricks Workspace
- Storage Account
- Blob Container


# Terraform Module: Azure Databricks Setup

## Overview

This Terraform module provisions essential resources for setting up an Azure Databricks environment, including a resource group, Databricks workspace, storage account, and blob container. The module allows for conditional creation of each resource based on boolean input variables.

## Usage

```hcl
module "example" {
  source                      = "../../modules/az-databricks"
  
  # Resource Group
  create_resource_group       = var.create_resource_group
  spoke_resource_group_name   = var.spoke_resource_group_name
  location                    = var.location
  tags                        = var.tags

  # Databricks Workspace
  create_databricks_workspace = var.create_databricks_workspace
  databricks_workspace_name   = var.databricks_workspace_name
  databricks_sku              = var.databricks_sku
  managed_resource_group_name = var.managed_resource_group_name

  # Storage Account
  create_storage_account      = var.create_storage_account
  storage_account_name        = var.storage_account_name
  storage_account_tier        = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type

  # Blob Container
  create_blob_container       = var.create_blob_container
  blob_container_name         = var.blob_container_name
  blob_container_access_type  = var.blob_container_access_type
}
```

## Inputs

| Name                             | Description                                            | Type    | Default | Required |
|----------------------------------|--------------------------------------------------------|---------|---------|----------|
| `create_resource_group`          | Whether to create a new resource group                 | `bool`  | `null`  | yes      |
| `spoke_resource_group_name`      | Name of the spoke resource group                       | `string`| n/a     | yes      |
| `location`                       | Azure region where the resources should be created     | `string`| n/a     | yes      |
| `tags`                           | Tags to be applied to the resources                    | `map`   | `{}`    | no       |
| `create_databricks_workspace`    | Whether to create a Databricks workspace               | `bool`  | `null`  | yes      |
| `databricks_workspace_name`      | Name of the Databricks workspace                       | `string`| n/a     | yes      |
| `databricks_sku`                 | SKU for the Databricks workspace                       | `string`| n/a     | yes      |
| `managed_resource_group_name`    | Managed resource group name for Databricks             | `string`| `""`    | no       |
| `create_storage_account`         | Whether to create a new storage account                | `bool`  | `null`  | yes      |
| `storage_account_name`           | Name of the storage account                            | `string`| n/a     | yes      |
| `storage_account_tier`           | Tier of the storage account                            | `string`| n/a     | yes      |
| `storage_account_replication_type`| Replication type for the storage account               | `string`| n/a     | yes      |
| `create_blob_container`          | Whether to create a new blob container                 | `bool`  | `null`  | yes      |
| `blob_container_name`            | Name of the blob container                             | `string`| n/a     | yes      |
| `blob_container_access_type`     | Access type for the blob container                     | `string`| n/a     | yes      |

## Outputs

| Name                      | Description                                |
|---------------------------|--------------------------------------------|
| `resource_group_name`     | The name of the resource group             |
| `databricks_workspace_id` | The ID of the Databricks workspace         |
| `storage_account_name`    | The name of the storage account            |
