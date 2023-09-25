terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.74.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e4af9bfa-8734-4e67-8b9a-0a9243cd74a1"
  tenant_id       = "42656ac8-f43b-48e0-be5c-9e698dd08f5f"
  skip_provider_registration = "true"
}