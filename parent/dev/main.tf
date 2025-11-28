module "rg" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg
}

module "server" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_mssql_server"
  server     = var.server
}

module "db" {
  depends_on = [module.server]
  source     = "../../modules/azurerm-mssql_db"
  db         = var.db

}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_acr"
  acr        = var.acr

}

module "aks" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm_aks"
  aks        = var.aks
}
