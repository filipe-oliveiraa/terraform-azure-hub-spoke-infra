resource "azurerm_virtual_network_peering" "virtual_network_peering" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.resource_virtual_network_id
}