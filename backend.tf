terraform {
  backend "azurerm" {
    resource_group_name  = "First_resource_group"
    storage_account_name = "terraformstate540"
    container_name       = "terraformstate"
    key                  = "state.tfstate"
  }
}
