action_groups = {
  "group1" = {
    name                = "ag-prod-infra-br-01"
    short_name          = "AG-PROD-SYS"
    resource_group_name = "rg-prod-westus2-br-app-01"
    location            = "global"
    enabled             = true
    tags                = {
      Environment = "Production"
    }   
    email_receivers = [
      {
        name                    = "Azure Monitor Alert_-EmailAction-1"
        email_address           = "aayush.singhal01@gmail.com"
        use_common_alert_schema = true
      },
      {
        name                    = "Azure Monitor Alert_-EmailAction-2"
        email_address           = "aayusinghal983@gmail.com"
        use_common_alert_schema = true
      }
    ]
  }
}