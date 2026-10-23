
module "rgs" {
  source = "git::https://github.com/sharanjeetaulakh/terraform-azure-resource-group.git"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.rgs]
  source     = "git::https://github.com/sharanjeetaulakh/terraform-azure-vnet.git"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "git::https://github.com/sharanjeetaulakh/terraform-azure-subnet.git"
  subnets    = var.subnets
}
