module "rgs" {
  source = "git::https://github.com/sharanjeetaulakh/terraform-azure-resource-group.git"
  rgs    = var.rgs

}

module "storage_accounts" {
  depends_on       = [module.rgs]
  source           = "git::https://github.com/sharanjeetaulakh/terraform-azure-storage-account.git"
  storage_accounts = var.storage_accounts

}

module "containers" {
  depends_on = [module.storage_accounts]
  source     = "git::https://github.com/sharanjeetaulakh/terraform-azure-container.git"
  containers = var.containers
}

module "blobs" {
  depends_on = [module.containers]
  source     = "git::https://github.com/sharanjeetaulakh/terraform-azure-blob.git"
  blobs      = var.blobs

}