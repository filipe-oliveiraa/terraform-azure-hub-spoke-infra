variable "name" {
  description = "Name of the VPC Peering"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name of the VPC Peering"
  type        = string
}

variable "virtual_network_name" {
  description = "Virtual Network Name of the VPC Peering"
  type        = string
}

variable "resource_virtual_network_id" {
  description = "Resource Virtual Network ID of the VPC Peering"
  type        = string
}