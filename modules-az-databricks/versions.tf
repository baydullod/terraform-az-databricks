terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.11"
        }
        databricks = {
            source  = "databricks/databricks"
            version = "1.48.3"
        }
    }
}

provider "azurerm" {
    # Configuration options
}