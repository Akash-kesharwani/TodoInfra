resource "azurerm_container_registry" "acr-res" {
    for_each = var.acr
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  sku                 = each.value.sku                                #"Premium"
  admin_enabled       = each.value.admin_enabled                                             #false
}