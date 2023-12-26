# Criando uma rede virtual para acessar a máquina remotamente
resource "azurerm_virtual_network" "network-bulbe" {
  name                = "${var.rede}"
  address_space       = ["10.0.0.0/16"]
  location            = var.localizacao
  resource_group_name = var.gruporecursos_bulbe
  tags = var.tags
  depends_on = [azurerm_resource_group.resourcegroup_bulbe]
}

# Criando uma subnet
resource "azurerm_subnet" "subrede-bulbe" {
  name                 = "sub-${var.rede}"
  resource_group_name  = var.gruporecursos_bulbe
  virtual_network_name = azurerm_virtual_network.network-bulbe.name
  address_prefixes     = ["10.0.0.0/24"]
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe]
}

# # Criando um IP público (permitir conexão fora da rede Azure)
# resource "azurerm_public_ip" "ippublico-dremio" {
#   name                = "ippublico-dremio"
#   location            = var.localizacao
#   resource_group_name = var.gruporecursos_bulbe
#   allocation_method   = "Dynamic"
#   depends_on = [azurerm_resource_group.resourcegroup_bulbe,
#   azurerm_virtual_network.network-bulbe,
#   azurerm_subnet.subrede-bulbe]
# }

# # Criando um IP público (permitir conexão fora da rede Azure)
# resource "azurerm_public_ip" "ippublico-kafka" {
#   name                = "ippublico-kafka"
#   location            = var.localizacao
#   resource_group_name = var.gruporecursos_bulbe
#   allocation_method   = "Dynamic"
#   depends_on = [azurerm_resource_group.resourcegroup_bulbe,
#   azurerm_virtual_network.network-bulbe,
#   azurerm_subnet.subrede-bulbe]
# }

# Criando um IP público (permitir conexão fora da rede Azure)
resource "azurerm_public_ip" "ippublico-airflow" {
  name                = "ippublico-airflow"
  location            = var.localizacao
  resource_group_name = var.gruporecursos_bulbe
  allocation_method   = "Dynamic"
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_subnet.subrede-bulbe]
}