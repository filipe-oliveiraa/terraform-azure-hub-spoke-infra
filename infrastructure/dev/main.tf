#------------------------------------------------------
#| Resource Group
#------------------------------------------------------
module "resource_group" {
  source   = "../../resources/resource_group"
  name     = var.resource_group_name
  location = var.resource_group_location
}

#------------------------------------------------------
#| Virtual Network
#------------------------------------------------------~

# module "virtual_networks" {
#   for_each = var.virtual_networks

#   source = "../../resources/virtual_network"
#   name = each.value.name
#   address_space = each.value.address_space
#   location = module.resource_group.location
#   resource_group_name = module.resource_group.name
# }

module "vnet_hub" {

  source              = "../../resources/virtual_network"
  name                = var.vnet_hub_name
  address_space       = var.vnet_hub_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "vnet_spoke_1" {

  source              = "../../resources/virtual_network"
  name                = var.vnet_spoke_1_name
  address_space       = var.vnet_spoke_1_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "vnet_spoke_2" {

  source              = "../../resources/virtual_network"
  name                = var.vnet_spoke_2_name
  address_space       = var.vnet_spoke_2_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

module "vnet_spoke_3" {

  source              = "../../resources/virtual_network"
  name                = var.vnet_spoke_3_name
  address_space       = var.vnet_spoke_3_address_space
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}