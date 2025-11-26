
resource "azurerm_mssql_server" "mssql-server" {
    for_each = var.server
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version                   
  administrator_login          = "serveradmin"
  administrator_login_password = "ServerPassword"
  minimum_tls_version          = each.value.minimum_tls_version                                     #"1.2"
}