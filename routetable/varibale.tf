variable "route_tables" {
  description = "A map of route tables to create."
  type = map(object({
    route_table_name              = string
    location                      = string
    resource_group_name           = string
    bgp_route_propagation_enabled = optional(bool, false)
    routes = list(object({
      name                   = string
      address_prefix         = string
      next_hop_type          = string
      next_hop_in_ip_address = optional(string)
    }))
  }))
}