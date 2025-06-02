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

#------------------------------------------------------
#| Variables - Subnet
#------------------------------------------------------

variable "subnet_1_name" {
  description = "Subnet_1 Name"
  type = string
}

variable "subnet_2_name" {
  description = "Subnet_2 Name"
  type = string
}

variable "subnet_3_name" {
  description = "Subnet_3 Name"
  type = string
}

variable "subnet_4_name" {
  description = "Subnet_4 Name"
  type = string
}

variable "subnet_bastion_name" {
  description = "Subnet_bastion Name"
  type = string
}

variable "subnet_6_name" {
  description = "Subnet_6 Name"
  type = string
}

variable "subnet_1_address_prefixes" {
  description = "Subnet_1 Adress Prefixes"
  type = list(string) 
}

variable "subnet_2_address_prefixes" {
  description = "Subnet_2 Adress Prefixes"
  type = list(string) 
}

variable "subnet_3_address_prefixes" {
  description = "Subnet_3 Adress Prefixes"
  type = list(string) 
}

variable "subnet_4_address_prefixes" {
  description = "Subnet_4 Adress Prefixes"
  type = list(string) 
}

variable "subnet_bastion_address_prefixes" {
  description = "Subnet_bastion Adress Prefixes"
  type = list(string) 
}

variable "subnet_6_address_prefixes" {
  description = "Subnet_6 Adress Prefixes"
  type = list(string) 
}