# Generate random name for the resource group
resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  location = var.resource_group_location
  name     = random_pet.rg_name.id
}

# Create an Azure Key Vault
resource "azurerm_key_vault" "example" {
  name                        = "${random_pet.rg_name.id}-kv"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = true

  # Optional access policy example (you can customize as per your Azure AD principal)
  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    secret_permissions = ["Get", "List", "Set", "Delete"]
    key_permissions    = ["Get", "List", "Create", "Delete"]
  }
}
