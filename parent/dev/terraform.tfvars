rg = {
  rg1 = {
    name     = "rg-ak1"
    location = "westus"
  }
}

server = {
  server1 = {
    name                = "serverak02001"
    resource_group_name = "rg-ak1"
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
    max_size_gb    = 4
    read_scale     = true
    sku_name       = "S0"
    zone_redundant = true
    server_name =  "serverak02001"
    resource_group_name = "rg-ak1"
  }
}

acr = {
  acr1 = {
    name                = "acrak"
    resource_group_name = "rg-ak1"
    location            = "westus"
    sku                 = "Standard"
    admin_enabled       = false

  }
}

aks = {
  aks1 = {
    name                = "aks-ak"
    location            = "westus"
    resource_group_name = "rg-ak1"
    dns_prefix          = "exampleaks1"
    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_D4_v3"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}
