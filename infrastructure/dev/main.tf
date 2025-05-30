module "resource_group_1" {
  source   = "../../resources/resource_group"
  name     = var.resource_group_name_1
  location = local.location
}

module "resource_group_2" {
  source   = "../../resources/resource_group"
  name     = var.resource_group_name_2
  location = local.location
}

module "resource_group_3" {
  source   = "../../resources/resource_group"
  name     = var.resource_group_name_3
  location = local.location
}