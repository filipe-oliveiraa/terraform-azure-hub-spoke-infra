output "id" {
  description = "The ID of the VPC Peering"
  value       = azurerm_virtual_network_peering.virtual_network_peering
}

output "name" {
  description = "The name of the VPC Peering"
  value       = azurerm_virtual_network_peering.virtual_network_peering.name
}

output "remote_virtual_network_id" {
  description = "The ID of the remote virtual network in the peering"
  value       = azurerm_virtual_network_peering.virtual_network_peering.remote_virtual_network_id
}

output "allow_virtual_network_access" {
  description = "Indicates if virtual network access is allowed"
  value       = azurerm_virtual_network_peering.virtual_network_peering.allow_virtual_network_access
}

output "allow_forwarded_traffic" {
  description = "Indicates if forwarded traffic is allowed"
  value       = azurerm_virtual_network_peering.virtual_network_peering.allow_forwarded_traffic
}

output "allow_gateway_transit" {
  description = "Indicates if gateway transit is allowed"
  value       = azurerm_virtual_network_peering.virtual_network_peering.allow_gateway_transit
}

output "use_remote_gateways" {
  description = "Indicates if remote gateways are used"
  value       = azurerm_virtual_network_peering.virtual_network_peering.use_remote_gateways
}