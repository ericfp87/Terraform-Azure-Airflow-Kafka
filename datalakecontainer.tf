# # Criar um Cointêiner de dados
# resource "azurerm_storage_container" "containerdatalake" {
#   name                  = var.containerdatalake
#   storage_account_name  = azurerm_storage_account.storageaccount_bulbe.name
#   container_access_type = "blob"
#   depends_on = [azurerm_storage_account.storageaccount_bulbe]
# }
