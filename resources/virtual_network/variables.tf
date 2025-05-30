variable "name" {
  description = "Name of Subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name of Subnet"
  type        = string
}

variable "address_space" {
  description = "Adress Space of Subnet"
  type        = list(string)
}

variable "location" {
  description = "Location of Subnet"
  type        = string
}