# resource "azurerm_storage_account" "storageaccount_bulbe" {
#   name                     = var.contaarmazenamento
#   resource_group_name      = var.gruporecursos_bulbe
#   location                 = var.localizacao
#   account_tier             = "Standard"
#   account_replication_type = "GRS"
#   tags = var.tags
#   depends_on = [
#     azurerm_resource_group.resourcegroup_bulbe
#   ]
# }