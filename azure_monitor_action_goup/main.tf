resource "azurerm_monitor_action_group" "ag" {
  for_each = var.action_groups

  name                = each.value.name
  short_name          = each.value.short_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  enabled             = try(each.value.enabled, true)
  tags                = try(each.value.tags, {})

  dynamic "email_receiver" {
    for_each = try(each.value.email_receivers, [])
    content {
      name                    = email_receiver.value.name
      email_address           = email_receiver.value.email_address
      use_common_alert_schema = try(email_receiver.value.use_common_alert_schema, true)
    }
  }
}