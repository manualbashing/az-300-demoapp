provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-test2"
  location = "West Europe"
}


resource "azurerm_storage_account" "somecrap24" {
  name                     = "somecrap24"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "quickstarts" {
  name                  = "quickstarts"
  storage_account_name  = azurerm_storage_account.somecrap24.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "example_file" {
  name                   = "foo.zip"
  storage_account_name   = azurerm_storage_account.somecrap24.name
  storage_container_name = azurerm_storage_container.quickstarts.name
  type                   = "Block"
  source                 = "foo.zip"
}