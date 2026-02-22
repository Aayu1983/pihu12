variable "action_groups" {
  type = map(object({
    name                = string
    short_name          = string
    resource_group_name = string
    location            = string
    enabled             = optional(bool, true)
    tags                = optional(map(string), {})
    email_receivers     = optional(list(object({
      name                    = string
      email_address           = string
      use_common_alert_schema = optional(bool, true)
    })), [])
  }))
}