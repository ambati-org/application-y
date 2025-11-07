resource "azurerm_resource_group" "this" {
  name     = local.env.rg_name
  location = var.location
  tags     = local.env.tags
}