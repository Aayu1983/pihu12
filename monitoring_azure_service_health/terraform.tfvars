monitor_action_group                     = "ag-prod-infra-br-01"
resource_group_name_monitor_action_group = "rg-prod-westus2-br-app-01"

log_alerts = {
  create = {
    log_name                 = "Microsoft Azure Service Health Alert | Service Issues,Planned Maintenance"
    enabled                  = true
    resource_group_name_logs = "rg-prod-westus2-br-app-01"
    location                 = "global"
    subscription             = "/subscriptions/d8cc2ff0-4966-4b41-849d-de4d01f122c5"
    description              = "Alert for Service Health Issues"
    
    criteria = {
      operation_name = null
      category       = "ServiceHealth"
    }
       service_health = {
      events    = ["Incident","Maintenance"]
      locations = ["West Central US", "West US 2"]
    }

    webhook_properties = {}
  }
}