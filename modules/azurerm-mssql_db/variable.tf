variable "db" {
    type = map(object({
      name = string
      collation = string
      license_type = string
      max_size_gb = number
      sku_name = string
      server_name =string
      enclave_type = string
      resource_group_name = string
    }))
  
}