
rgs = {
  rg01 = {
    name     = "rg-lms-idn-preprod-01"
    location = "Southeast Asia"
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
    name                 = "snet-lms-preprod-frontend-01"
    resource_group_name  = "rg-lms-idn-preprod-01"
    virtual_network_name = "vnet-lms-idn-preprod-01"
    address_prefixes     = ["10.0.1.0/24"]
  }

  backend = {
    name                 = "snet-lms-preprod-backend-01"
    resource_group_name  = "rg-lms-idn-preprod-01"
    virtual_network_name = "vnet-lms-idn-preprod-01"
    address_prefixes     = ["10.0.2.0/24"]
  }

  postgres = {
    name                 = "snet-lms-preprod-postgres-01"
    resource_group_name  = "rg-lms-idn-preprod-01"
    virtual_network_name = "vnet-lms-idn-preprod-01"
    address_prefixes     = ["10.0.3.0/24"]
  }
}
