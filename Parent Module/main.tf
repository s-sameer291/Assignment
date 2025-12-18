module "resource_group" {
  source                  = "../child Module/Resource_Group"
  resource_group_name     = var.resource_group_name1
  resource_group_location = "centralindia"
}