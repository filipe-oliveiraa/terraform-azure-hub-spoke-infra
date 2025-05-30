#------------------------------------------------------
#| Variables - Resource Group
#------------------------------------------------------
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
}

#------------------------------------------------------
#| Variables - Virtual Network
#------------------------------------------------------
variable "vnet_hub_name" {
  description = "Vnet Hub Name"
  type        = string
}

variable "vnet_spoke_1_name" {
  description = "Vnet Spoke 1 Name"
  type        = string
}

variable "vnet_spoke_2_name" {
  description = "Vnet Spoke 2 Name"
  type        = string
}

variable "vnet_spoke_3_name" {
  description = "Vnet Spoke 3 Name"
  type        = string
}

variable "vnet_hub_address_space" {
  description = "Vnet Hub Adress Space"
  type        = list(string)
}

variable "vnet_spoke_1_address_space" {
  description = "Vnet Spoke 1 Adress Space"
  type        = list(string)
}

variable "vnet_spoke_2_address_space" {
  description = "Vnet Spoke 2 Adress Space"
  type        = list(string)
}

variable "vnet_spoke_3_address_space" {
  description = "Vnet Spoke 3 Adress Space"
  type        = list(string)
}

# variable "virtual_networks" {
#   description = "Map of virtual network configurations"
#   type = map(object({
#     name = string
#     address_space = list(string)
#     location = string
#     resource_group_name = string
#   }))
# }