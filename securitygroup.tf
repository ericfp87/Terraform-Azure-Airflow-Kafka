# Criando um grupo de segurança
resource "azurerm_network_security_group" "securitygroup-bulbe" {
  name                = var.gruposeguranca
  location            = var.localizacao
  resource_group_name = var.gruporecursos_bulbe
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe]
  tags = var.tags
}

# Criando regra de segurança para conexão na porta SSH (22)
resource "azurerm_network_security_rule" "inboundrole-ssh-bulbe" {
  name                        = "regraportassh"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefixes     = ["0.0.0.0/0"]  # [var.ip_pessoal] Coloque essa variável caso queira especificar o IP de origem para acessar
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta HTTP (80)
resource "azurerm_network_security_rule" "inboundrole-http-bulbe" {
  name                        = "regraportahttp"
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 9047 (Dremio)
resource "azurerm_network_security_rule" "inboundrole-dremio-bulbe" {
  name                        = "regraportadremio"
  priority                    = 102
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "9047"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 9021 (Kafka)
resource "azurerm_network_security_rule" "inboundrole-kafka-control-center-bulbe" {
  name                        = "regraportakafka-control-center"
  priority                    = 103
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "9021"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 2121 (Kafka Control Center)
resource "azurerm_network_security_rule" "inboundrole-kafka-zookeeper-bulbe" {
  name                        = "regraportakafka-zookeeper"
  priority                    = 104
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "2121"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 2121 (Kafka Broker1)
resource "azurerm_network_security_rule" "inboundrole-kafka-broker1-bulbe" {
  name                        = "regraportakafka-broker1"
  priority                    = 105
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "9091"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 2121 (Kafka Broker2)
resource "azurerm_network_security_rule" "inboundrole-kafka-broker2-bulbe" {
  name                        = "regraportakafka-broker2"
  priority                    = 106
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "9092"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 2121 (Kafka KSQLDb)
resource "azurerm_network_security_rule" "inboundrole-kafka-ksqldb-bulbe" {
  name                        = "regraportakafka-ksqldb"
  priority                    = 107
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8088"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 2121 (Kafka KSQLDb)
resource "azurerm_network_security_rule" "inboundrole-kafka-schema-registry-bulbe" {
  name                        = "regraportakafka-schema-registry"
  priority                    = 108
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8081"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 8083 (Kafka DataGen Connect)
resource "azurerm_network_security_rule" "inboundrole-kafka-datagen-connect-bulbe" {
  name                        = "regraportakafka-datagen-connect"
  priority                    = 109
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8083"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}

# Criando regra de segurança para conexão na porta 8080 (Interface Web Airflow)
resource "azurerm_network_security_rule" "inboundrole-interface-web-airflow-bulbe" {
  name                        = "regraportaairflow-interface-web"
  priority                    = 110
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "8080"
  source_address_prefixes     = ["0.0.0.0/0"]
  destination_address_prefix  = "*"
  resource_group_name         = var.gruporecursos_bulbe
  network_security_group_name = azurerm_network_security_group.securitygroup-bulbe.name
  depends_on = [azurerm_resource_group.resourcegroup_bulbe,
  azurerm_virtual_network.network-bulbe,
  azurerm_network_security_group.securitygroup-bulbe]
}