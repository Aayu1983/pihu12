route_tables = {
  proddr_route = {
    route_table_name              = "rt-proddr-br-apgtwsnet"
    location                      = "westcentralus"
    resource_group_name           = "myrg"
    bgp_route_propagation_enabled = false
    routes = [
      {
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-01"
        address_prefix         = "10.0.0.0/8"
        next_hop_in_ip_address = "10.45.240.68"
        next_hop_type          = "VirtualAppliance"
      },
      {
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-02"
        address_prefix         = "172.16.0.0/12"
        next_hop_in_ip_address = "10.145.240.68"
        next_hop_type          = "VirtualAppliance"
      },
      {
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-03"
        address_prefix         = "192.168.0.0/16"
        next_hop_in_ip_address = "10.145.240.68"
        next_hop_type          = "VirtualAppliance"
      }
    ]
  }
}