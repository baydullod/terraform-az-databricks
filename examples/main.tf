module "adb-lakehouse" {
  # With UC by default we need to explicitly create a UC metastore, otherwise it will be created automaticall
  source                          = "../../modules/adb-lakehouse"
  project_name                    = var.project_name
  environment_name                = var.environment_name
  location                        = var.location
  spoke_vnet_address_space        = var.spoke_vnet_address_space
  spoke_resource_group_name       = var.spoke_resource_group_name
  managed_resource_group_name     = var.managed_resource_group_name
  databricks_workspace_name       = var.databricks_workspace_name
  data_factory_name               = var.data_factory_name
  key_vault_name                  = var.key_vault_name
  private_subnet_address_prefixes = var.private_subnet_address_prefixes
  public_subnet_address_prefixes  = var.public_subnet_address_prefixes
  storage_account_names           = var.storage_account_names
  tags                            = var.tags
}