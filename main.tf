provider "azurerm" {
    version = "~>2.10"
    features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "sig-rg" {
  name     = "test-dorus-rg"
  location = "West Europe"
  lifecycle {
    ignore_changes = [tags]
  }
}
