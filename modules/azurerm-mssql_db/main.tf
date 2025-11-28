
resource "azurerm_mssql_database" "db" {
    for_each = var.db
  name           = each.value.name
  server_id      = data.azurerm_mssql_server.server-data[each.key].id
  collation      = each.value.collation                
  license_type   = each.value.license_type                
  max_size_gb    = each.value.max_size_gb                 #4
  sku_name       = each.value.sku_name                 #"S0"
  enclave_type   = each.value.enclave_type                 #"VBS"
}