
rgs = {
  rg01 = {
    name     = "rg-lms-idn-preprod-01"
    location = "Southeast Asia"
  }
}

storage_accounts = {
  str01 = {
    name                     = "stlmsidnpreprod001"
    resource_group_name      = "rg-lms-idn-preprod-01"
    location                 = "Southeast Asia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

containers = {
  container01 = {
    name                  = "loan-documents"
    storage_account_name  = "stlmsidnpreprod001"
    resource_group_name   = "rg-lms-idn-preprod-01"
    container_access_type = "private"
  }
}

blobs = {
  blob01 = {
    name                 = "loan-application-sample.pdf"
    container_name       = "loan-documents"
    storage_account_name = "stlmsidnpreprod001"
    resource_group_name  = "rg-lms-idn-preprod-01"
    type                 = "Block"
    source               = "./loan-application-sample.pdf"
  }
}

vnets = {
  vnet01 = {
    name                = "vnet-lms-idn-preprod-01"
    location            = "Southeast Asia"
    resource_group_name = "rg-lms-idn-preprod-01"
    address_space       = ["10.0.0.0/16"]

    tags = {
      Environment = "Preprod"
      Project     = "LoanManagement"
      ManagedBy   = "Terraform"
      Owner       = "DevOps"
    }
  }
}

subnets = {
  frontend = {
    name                 = "snet-lms-prod-frontend-01"
    resource_group_name  = "rg-lms-idn-prod-01"
    virtual_network_name = "vnet-lms-idn-prod-01"
    address_prefixes     = ["10.1.1.0/24"]
  }

  backend = {
    name                 = "snet-lms-prod-backend-01"
    resource_group_name  = "rg-lms-idn-prod-01"
    virtual_network_name = "vnet-lms-idn-prod-01"
    address_prefixes     = ["10.2.1.0/24"]
  }

  postgres = {
    name                 = "snet-lms-prod-postgres-01"
    resource_group_name  = "rg-lms-idn-prod-01"
    virtual_network_name = "vnet-lms-idn-prod-01"
    address_prefixes     = ["10.3.1.0/24"]
  }
}

