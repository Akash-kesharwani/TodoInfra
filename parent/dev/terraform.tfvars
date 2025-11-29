rg = {
  rg1 = {
    name     = "rg-ak"
    location = "westus"
  }
}

server = {
  server1 = {
    name                = "serverak020201"
    resource_group_name = "rg-ak"
    version             = "12.0"
    location            = "westus"
    minimum_tls_version  = "1.2"
  }
}
db = {
  db1 = {
    name           = "db-ak"
    collation      = "SQL_Latin1_General_CP1_CI_AS"
    license_type   = "LicenseIncluded"
    max_size_gb    = 2
    sku_name       = "S0"
    server_name =  "serverak020201"
    resource_group_name = "rg-ak"
  }
}

acr = {
  acr1 = {
    name                = "acrak123"
    resource_group_name = "rg-ak"
    location            = "westus"
    sku                 = "Standard"
    admin_enabled       = false

  }
}

aks = {
  aks1 = {
    name                = "aks-ak"
    location            = "westus"
    resource_group_name = "rg-ak"
    dns_prefix          = "exampleaks1"
    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_D2as_v6"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}
