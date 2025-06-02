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

#------------------------------------------------------
#| Subnet
#------------------------------------------------------

module "subnet_1" {
  source               = "../../resources/subnet"
  name                 = var.subnet_1_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_1.name
  address_prefixes     = var.subnet_1_address_prefixes
}

module "subnet_2" {
  source               = "../../resources/subnet"
  name                 = var.subnet_2_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_1.name
  address_prefixes     = var.subnet_2_address_prefixes

}

module "subnet_3" {
  source               = "../../resources/subnet"
  name                 = var.subnet_3_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_2.name
  address_prefixes     = var.subnet_3_address_prefixes

}

module "subnet_4" {
  source               = "../../resources/subnet"
  name                 = var.subnet_4_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_2.name
  address_prefixes     = var.subnet_4_address_prefixes

}

module "subnet_bastion" {
  source               = "../../resources/subnet"
  name                 = var.subnet_bastion_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_3.name
  address_prefixes     = var.subnet_bastion_address_prefixes

}

module "subnet_6" {
  source               = "../../resources/subnet"
  name                 = var.subnet_6_name
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.vnet_spoke_3.name
  address_prefixes     = var.subnet_6_address_prefixes

}

#------------------------------------------------------
#| Virtual Network Peering
#------------------------------------------------------

module "peer1tohub" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peer1tohub_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_spoke_1.name
  resource_virtual_network_id = module.vnet_hub.id
}

module "peerhubto1" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peerhubto1_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_hub.name
  resource_virtual_network_id = module.vnet_spoke_1.id
}

module "peer2tohub" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peer2tohub_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_spoke_2.name
  resource_virtual_network_id = module.vnet_hub.id
}

module "peerhubto2" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peerhubto2_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_hub.name
  resource_virtual_network_id = module.vnet_spoke_2.id
}

module "peer3tohub" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peer3tohub_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_spoke_3.name
  resource_virtual_network_id = module.vnet_hub.id
}

module "peerhubto3" {
  source                      = "../../resources/virtual_network_peering"
  name                        = var.peerhubto3_name
  resource_group_name         = module.resource_group.name
  virtual_network_name        = module.vnet_hub.name
  resource_virtual_network_id = module.vnet_spoke_3.id
}