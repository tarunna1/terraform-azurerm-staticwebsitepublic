resource "azurerm_resource_group" "tf-rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "my-stg" {
  name                     = "${var.storage_account_name}${random_string.myrandom.id}"
  location                 = var.location
  resource_group_name      = azurerm_resource_group.tf-rg.name
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind
  static_website {
    error_404_document = var.static_website_error_404_document
    index_document     = var.static_website_index_document
  }
}