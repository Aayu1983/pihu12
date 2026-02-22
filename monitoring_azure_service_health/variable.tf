variable "monitor_action_group" { type = string }
variable "resource_group_name_monitor_action_group" { type = string }

variable "log_alerts" {
  type = map(object({
    log_name                 = string
    enabled                  = bool
    resource_group_name_logs = string
    location                 = string
    subscription             = string
    description              = string
    criteria = object({
      operation_name = optional(string)
      category       = string
    })
   
    service_health = object({
      events    = list(string)
      locations = list(string)
    })
    webhook_properties = optional(map(string), {})
  }))
}