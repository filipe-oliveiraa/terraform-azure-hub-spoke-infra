variable "name" {
  description = "Name of the resource group."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the associated Virutal Network"
  type        = string
}

variable "address_prefixes" {
  description = "Adress Prefixes to use for the Subnet"
  type        = list(string)
}
