pubIPs = {
  pip1 = {
    name                    = "pip-proddr-wcentralus-br-appgtw-01"
    resource_group_name     = "rg-prod-wcentralus-br-01"
    location                = "westCentralUS"
    allocation_method       = "Static"
    ddos_protection_mode    = "VirtualNetworkInherited"
    sku                     = "Standard"
    sku                     = "Regional"
    ip_tag                  = {}
    ip_version              = "IPv4"
    zones                   = []
    idle_timeout_in_minutes = 4

  }

  pip2 = {
    name                    = "pip-prod-westus-br-appgtw-01"
    resource_group_name     = "rg-prod-wcentralus-br-01"
    location                = "west US2"
    allocation_method       = "Static"
    ddos_protection_mode    = "VirtualNetworkInherited"
    sku                     = "Standard"
    sku                     = "Regional"
    ip_tag                  = {}
    ip_version              = "IPv4"
    zones                   = []
    idle_timeout_in_minutes = 4

  }
}
