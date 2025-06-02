output "id" {
  value       = azurerm_virtual_network.virtual_network.id
  description = "The ID of the virtual network."
}

output "name" {
  value       = azurerm_virtual_network.virtual_network.name
  description = "The name of the virtual network."
}

/*output "virtual_network_address_space" {
  value = { for k, v in azurerm_virtual_network.virtual_network : k => v.address_space }
  description = "The address space of all virtual networks."
}*/

output "location" {
  value       = azurerm_virtual_network.virtual_network.location
  description = "The location of the virtual network."
}