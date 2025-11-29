variable "rg" {
  type = map(object({
    name = string
    location = string
  }))
}
variable "server" {
    type = map(object({
      name = string
      resource_group_name = string
      location = string
      version = string
      minimum_tls_version = string

    })) 
}
variable "db" {
    type = map(object({
      name = string
      collation = string
      license_type = string
      max_size_gb = number
      sku_name = string
      server_name =string
      enclave_type = optional(string, "VBS")
      resource_group_name = string
    }))
  
}
variable "aks" {
    type = map(object({
      name = string
      location = string
      resource_group_name = string
      dns_prefix = string
      default_node_pool = map(string)
      identity = map(string)

    }))
}
variable "acr" {
  type = map(object({
        name                = string
        resource_group_name = string
        location            = string
        sku                 = string
        admin_enabled       = bool
  }))
}