resource "azurerm_resource_group" "this" {
  name     = local.env.rg_name
  location = var.location
  tags     = local.env.tags
}

# module "keyvault" {
#   count  = var.environment == "dev" || var.environment == "prod" ? 1 : 0
#   source = "./modules/keyvault"

#   name                = local.env.keyvault_name
#   location            = var.location
#   resource_group_name = azurerm_resource_group.this.name
#   tags                = local.env.tags
# }
