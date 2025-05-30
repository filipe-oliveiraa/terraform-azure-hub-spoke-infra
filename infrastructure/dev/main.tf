module "resource_group" {
  source   = "../../resources/resource_group"
  name     = local.resource_group_name
  location = local.location
}

module "virtual_networks" {
  for_each = var.virtual_networks

  source = "../../resources/virtual_network"
  name = each.value.name
  address_space = each.value.address_space
  location = local.location
  resource_group_name = local.resource_group_name
}