data "azurerm_resource_group" "main" {
  name = "project-Alpha"
}

output "name" {
  value = data.azurerm_resource_group.main.name
}

data "azurerm_virtual_network" "main" {
  name                = "Project-Alpha"
  resource_group_name = "Project-Alpha"
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.main.id
}

data "azurerm_subnet" "main" {
  name                 = "default"
  virtual_network_name = data.azurerm_virtual_network.main.name
  resource_group_name  = data.azurerm_resource_group.main.name
}

data "azurerm_public_ip" "main" {
  name                = "alpha-pip"
  resource_group_name = data.azurerm_resource_group.main.name
  
}
