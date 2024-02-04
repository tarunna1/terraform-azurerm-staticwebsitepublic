output "resource_group_name" {
  value = azurerm_resource_group.tf-rg.name
}

output "resoure_group_location" {
  value = azurerm_resource_group.tf-rg.location
}

output "resource_group_id" {
  value = azurerm_resource_group.tf-rg.id
}

output "storage_account_name" {
  value = azurerm_storage_account.my-stg.name
}

output "storage_account_id" {
  value = azurerm_storage_account.my-stg.id
}