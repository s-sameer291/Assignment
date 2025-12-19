module "resource_group" {
  source                  = "../child Module/Resource_Group"
  resource_group_name     = "rg_01"
  resource_group_location = "centralindia"
}


module "VNET" {
  depends_on = [ module.resource_group ]
  source                   = "../child Module/VNET"
  virtual_network_name     = "todo_vnet"
  virtual_network_location = "centralindia"
  resource_group_name      = "todo_app"
  address_space            = ["10.0.0.0/16"]

}

module "subnet" {
  depends_on = [ module.VNET ]
  source               = "../child Module/subnet"
  subnet_name          = "frontend_subnet"
  resource_group_name  = "todo_app"
  virtual_network_name = "todo_vnet"
  address_prefixes     = ["10.0.1.0/24"]
}