# Create a resource group
resource "azurerm_resource_group" "resourcegroup_bulbe" {
  name     = var.gruporecursos_bulbe
  location = var.localizacao
  tags = var.tags
}