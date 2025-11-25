variable "db" {
    type = map(object({
      name = string
      collation = string
      license_type = string
      max_size_gb = number
      read_scale = bool
      sku_name = string
      server_name =string
      zone_redundant = bool
      enclave_type = optional(string, "VBS")
      resource_group_name = string
    }))
  
}