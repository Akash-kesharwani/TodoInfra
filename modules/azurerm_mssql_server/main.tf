resource "azurerm_mssql_server" "server" {
  for_each = var.server
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = "Akash123"
  administrator_login_password = "Akash@123"
  minimum_tls_version          = each.value.minimum_tls_version
}