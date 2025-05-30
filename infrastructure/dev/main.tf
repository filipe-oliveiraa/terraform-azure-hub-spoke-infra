module "resource_group" {
  source   = "../../resources/resource_group"
  name     = var.resource_group_name
  location = local.location
}