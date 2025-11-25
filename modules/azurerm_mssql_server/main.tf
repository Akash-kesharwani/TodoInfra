
resource "azurerm_mssql_server" "mssql-server" {
    for_each = var.server
  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version                   
  administrator_login          = data.azurerm_key_vault_secret.username.value
  administrator_login_password = data.azurerm_key_vault_secret.password.value
  minimum_tls_version          = each.value.minimum_tls_version                                     #"1.2"
}