virtual_networks = {
  vnet_hub = {
    name                = "vnet_hub"
    address_space       = ["10.0.0.0/20"]
    location = ""
    resource_group_name = ""
  }
  vnet_spoke_1 = {
    name                = "vnet_spoke_1"
    address_space       = ["192.168.0.0/20"]
    location = ""
    resource_group_name = ""
  }
   vnet_spoke_2 = {
    name                = "vnet_spoke_2"
    address_space       = ["192.168.16.0/20"]
    location = ""
    resource_group_name = ""
  }
   vnet_spoke_3 = {
    name                = "vnet_spoke_3"
    address_space       = ["192.168.32.0/20"]
    location = ""
    resource_group_name = ""
  }
}
