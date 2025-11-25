resource "azurerm_resource_group" "rv" {
    for_each = var.rg
  name     = each.value.name
  location = each.value.location
}