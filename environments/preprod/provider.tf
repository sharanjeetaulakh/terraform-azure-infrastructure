terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0, < 5.0"
    }
  }
# backend "azurerm" {
#     resource_group_name  = "rg-lms-idn-preprod-01"
#     storage_account_name = "tlmsidnpreprod001"
#     container_name       = "loan-documents"
#     key                  = "preprod.terraform.tfstate"
#   }
}
provider "azurerm" {
  features {}
}
