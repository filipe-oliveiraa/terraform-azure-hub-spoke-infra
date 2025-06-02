output "id" {
  description = "The ID of the created subnet."
  value       = azurerm_subnet.subnet.id
}

output "name" {
  description = "The name of the created subnet."
  value       = azurerm_subnet.subnet.name
}

output "address_prefixes" {
  description = "The address prefixes associated with the subnet."
  value       = azurerm_subnet.subnet.address_prefixes
}

output "resource_group_name" {
  description = "The resource group of the subnet."
  value       = azurerm_subnet.subnet.resource_group_name
}

output "virtual_network_name" {
  description = "The virtual network name the subnet is attached to."
  value       = azurerm_subnet.subnet.virtual_network_name
}
