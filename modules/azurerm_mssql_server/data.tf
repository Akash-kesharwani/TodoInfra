data "azurerm_key_vault" "kv" {
  name                = "todokey"
  resource_group_name = "rg-ak"
}

data "azurerm_key_vault_secret" "username" {
  name         = "akashserver"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "akashpass"
  key_vault_id = data.azurerm_key_vault.kv.id
}