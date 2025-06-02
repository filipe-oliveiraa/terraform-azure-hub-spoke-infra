#------------------------------------------------------
#| Values - Resource Group
#------------------------------------------------------
resource_group_name     = "dev_filipe_oliveira_rg"
resource_group_location = "West Europe"

#------------------------------------------------------
#| Values - Virtual Network
#------------------------------------------------------
vnet_hub_name              = "vnet_hub"
vnet_spoke_1_name          = "vnet_spoke_1"
vnet_spoke_2_name          = "vnet_spoke_2"
vnet_spoke_3_name          = "vnet_spoke_3"
vnet_hub_address_space     = ["10.0.0.0/20"]
vnet_spoke_1_address_space = ["10.0.16.0/20"]
vnet_spoke_2_address_space = ["10.0.32.0/20"]
vnet_spoke_3_address_space = ["10.0.48.0/20"]

# virtual_networks = {
#   vnet_hub = {
#     name                = "vnet_hub"
#     address_space       = ["10.0.0.0/20"]
#     location = ""
#     resource_group_name = ""
#   }
#   vnet_spoke_1 = {
#     name                = "vnet_spoke_1"
#     address_space       = ["10.0.16.0/20"]
#     location = ""
#     resource_group_name = ""
#   }
#    vnet_spoke_2 = {
#     name                = "vnet_spoke_2"
#     address_space       = ["10.0.32.0/20"]
#     location = ""
#     resource_group_name = ""
#   }
#    vnet_spoke_3 = {
#     name                = "vnet_spoke_3"
#     address_space       = ["10.0.48.0/20"]
#     location = ""
#     resource_group_name = ""
#   }
# }

#------------------------------------------------------
#| Values - Subnet
#------------------------------------------------------

subnet_1_name = "subnet_1"
subnet_2_name = "subnet_2"
subnet_3_name = "subnet_3"
subnet_4_name = "subnet_4"
subnet_bastion_name = "subnet_bastion"
subnet_6_name = "subnet_6"
subnet_1_address_prefixes = ["10.0.16.0/24"]
subnet_2_address_prefixes = ["10.0.17.0/24"]
subnet_3_address_prefixes = ["10.0.32.0/24"]
subnet_4_address_prefixes = ["10.0.33.0/24"]
subnet_bastion_address_prefixes = ["10.0.48.0/24"]
subnet_6_address_prefixes = ["10.0.49.0/24"]