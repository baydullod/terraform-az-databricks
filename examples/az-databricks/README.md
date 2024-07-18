
# My Azure Module

This Terraform module provisions the following Azure resources:
- Resource Group
- Databricks Workspace
- Storage Account
- Blob Container

## Usage

```hcl
module "example" {
  source                      = "myusername/my-azure-module"
  create_resource_group       = "true/false"
  spoke_resource_group_name   = "your resource group name"
  location                    = "East US"
  tags                        = { key=value }

  create_databricks_workspace = "true/false"
  databricks_workspace_name   = "my-databricks-workspace"
  databricks_sku              = "standar/ or premium"

  create_storage_account      = "true/false"
  storage_account_name        = "mystorageaccount"
  storage_account_tier        = "Standard/or premium"
  storage_account_replication_type = "LRS"

  create_blob_container       = "true/false"
  blob_container_name         = "mycontainer"
  blob_container_access_type  = "private/or public"
}
```

## Inputs

| Name                             | Description                                | Type        | Default | Required |
|----------------------------------|--------------------------------------------|-------------|---------|----------|
| `create_resource_group`          | Should the resource group be created?      | `bool`      | `true`  | no       |
| `spoke_resource_group_name`      | The name of the resource group             | `string`    | n/a     | yes      |
| `location`                       | The Azure region where resources will be created | `string`    | n/a     | yes      |
| `tags`                           | A map of tags to assign to the resources    | `map(string)` | `{}`   | no       |
| `create_databricks_workspace`    | Should the Databricks workspace be created? | `bool`      | `true`  | no       |
| `databricks_workspace_name`      | The name of the Databricks workspace       | `string`    | n/a     | yes      |
| `databricks_sku`                 | The SKU of the Databricks workspace        | `string`    | n/a     | yes      |
| `managed_resource_group_name`    | The name of the managed resource group     | `string`    | `""`    | no       |
| `create_storage_account`         | Should the storage account be created?     | `bool`      | `true`  | no       |
| `storage_account_name`           | The name of the storage account            | `string`    | n/a     | yes      |
| `storage_account_tier`           | The tier of the storage account            | `string`    | n/a     | yes      |
| `storage_account_replication_type` | The replication type of the storage account | `string` | n/a | yes |
| `create_blob_container`          | Should the blob container be created?      | `bool`      | `true`  | no       |
| `blob_container_name`            | The name of the blob container             | `string`    | n/a     | yes      |
| `blob_container_access_type`     | The access type of the blob container      | `string`    | n