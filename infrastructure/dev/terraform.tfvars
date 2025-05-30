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
