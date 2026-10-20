rgs = {
  rg01 = {
    name     = "rg-lms-idn-dev-01"
    location = "Southeast Asia"
  }
}

storage_accounts = {
  str01 = {
    name                     = "stlmsidndev001"
    resource_group_name      = "rg-lms-idn-dev-01"
    location                 = "Southeast Asia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

containers = {
  container01 = {
    name                  = "loan-documents"
    storage_account_name  = "stlmsidndev001"
    resource_group_name   = "rg-lms-idn-dev-01"
    container_access_type = "private"
  }
}

blobs = {
  blob01 = {
    name = "loan-application-sample.pdf"
    # storage_container_id = data.azurerm_storage_container.storage_container[each.key].id 

    type   = "Block"
    source = "./loan-application-sample.pdf"
  }
}
