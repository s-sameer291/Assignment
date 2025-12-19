module "resource_group" {
  source                  = "../child Module/Resource_Group"
  resource_group_name     = "rg_01"
  resource_group_location = "centralindia"
}