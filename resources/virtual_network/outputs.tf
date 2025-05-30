output "virtual_network_id" {
    value = azurerm_virtual_network.virtual_network
    description = "The ID of the virtual network."
}

output "virtual_network_name" {
    value = azurerm_virtual_network.virtual_network
    description = "The name of the virtual network."
}

output "virtual_network_address_space" {
    value = azurerm_virtual_network.virtual_network
    description = "The address space of the virtual network."
}

output "virtual_network_location" {
    value = azurerm_virtual_network.virtual_network
    description = "The location of the virtual network."
}