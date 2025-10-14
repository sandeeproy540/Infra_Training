# Prefix for resource group name
variable "resource_group_name_prefix" {
  description = "Prefix for the resource group name"
  type        = string
  default     = "demo-rg"
}

# Location for resources
variable "resource_group_location" {
  description = "Azure region for the resource group"
  type        = string
  default     = "East US"
}

# Tenant ID of your Azure AD
variable "tenant_id" {
  description = "Azure Active Directory Tenant ID"
  type        = string
}

# Object ID for Key Vault access policy (e.g., your user/service principal)
variable "object_id" {
  description = "Azure AD Object ID for access policy"
  type        = string
}
