
resource "azurerm_mssql_database" "db" {
    for_each = var.db
  name           = each.value.name
  server_id      = data.azurerm_mssql_server.server-data[each.key].id
  collation      = each.value.collation                
  license_type   = each.value.license_type                
  max_size_gb    = each.value.max_size_gb                 #4
  read_scale     = each.value.read_scale                 #true
  sku_name       = each.value.sku_name                 #"S0"
  zone_redundant = each.value.zone_redundant                 #true
  enclave_type   = each.value.enclave_type                 #"VBS"
}