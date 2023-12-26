variable tags {
    default = {
        Proprietario = "Eric"
        Email = ""
    }
}
variable localizacao {
    description = "Localização geográfica dos recursos Azure"
    default = "eastus" # Altere para o valor retornado na consulta sobre regiões disponíveis
}
variable gruporecursos_bulbe {
    description = "Grupo de recursos utilizados"
    default = "Resource_Bulbe"
}
variable contaarmazenamento {
    description = "Conta de armazenamento dos dados"
    default = "bulbeenergia" 
}
variable containerdatalake {
    description = "Contêiner: Armanazenamento de blobs"
    default = "datalake-bulbe"
}
variable "rede" {
    description = "Nome da rede virtual"
    default = "vnetbulbe" 
}
variable "gruposeguranca" {
    description = "Grupo de segurança da plataforma Azure"
    default = "vnetsecuritygroupbulbe" 
}
variable "ip_pessoal" {
    description = "Endereço IP do usuário que vai se conectar à rede Azure"
    default = "187.115.185.39" 
}

variable "virtualmachine_linux_kafka" {
    description = "Nome da máquina virtual LINUX"
    default = "vmlinuxKafkaBulbe" 
}

variable "virtualmachine_linux_dremio" {
    description = "Nome da máquina virtual LINUX"
    default = "vmlinuxDremioBulbe" 
}

variable "virtualmachine_linux_airflow" {
    description = "Nome da máquina virtual LINUX"
    default = "vmlinuxAirFlowBulbe" 
}

variable "nomeusuariovm" {
    description = "Nome do usuário administrador que vai se conectar a maquina virtual"
    default = "adm-egh" 
}

variable "senhausuariovm" {
    description = "Senha do usuário administrador que vai se conectar a maquina virtual"
    default = "123456789@bC" # Digite uma senha forte (mínimo de 12 dígitos), letras maiúsculas e minúsculas, caracteres especiais e números"
}
