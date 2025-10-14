# Output the resource group name
output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.example.name
}

# Output the Key Vault name
output "key_vault_name" {
  description = "The name of the created Key Vault"
  value       = azurerm_key_vault.example.name
}

# Output the Key Vault URI
output "key_vault_uri" {
  description = "The URI of the Key Vault"
  value       = azurerm_key_vault.example.vault_uri
}
