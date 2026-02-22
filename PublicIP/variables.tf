variable "pubIPs" {
  description = "Map of Public IPs to create, keyed by name"
  type = map(object({
    name              = string
    rg_name           = string
    location          = string
    allocation_method = string

    zones                   = optional(list(string), [])
    ddos_protection_mode    = optional(string, "Disabled")
    ddos_protection_plan_id = optional(string, null)
    domain_name_label       = optional(string, null)
    edge_zone               = optional(string, null)
    idle_timeout_in_minutes = optional(number, 10)
    ip_tags                 = optional(map(string), {})
    public_ip_prefix_id     = optional(string, null)
    reverse_fqdn            = optional(string, null)
    sku                     = optional(string, "Standard")
    sku_tier                = optional(string, "Regional")
    tags                    = optional(map(string), {})
  }))
  default = {}
}

