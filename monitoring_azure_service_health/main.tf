data "azurerm_monitor_action_group" "shared" {
  name                = var.monitor_action_group
  resource_group_name = var.resource_group_name_monitor_action_group
}

resource "azurerm_monitor_activity_log_alert" "main" {
  for_each            = var.log_alerts
  name                = each.value.log_name
  resource_group_name = each.value.resource_group_name_logs
  location            = each.value.location
  scopes              = [each.value.subscription]
  description         = each.value.description
  enabled             = each.value.enabled

  criteria {
    operation_name = each.value.criteria.operation_name
    category       = each.value.criteria.category
 
    service_health {
      events    = each.value.service_health.events
      locations = each.value.service_health.locations
    }
  }

  action {
    action_group_id    = data.azurerm_monitor_action_group.shared.id
    webhook_properties = try(each.value.webhook_properties, {})
  }
}