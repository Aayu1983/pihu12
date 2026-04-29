route_tables = {
  "table1"= {
    route_table_name              = "rt-proddr-br-apgtwsnet" 
    location                      = "westcentralus"
    resource_group_name           = "myrg"
    bgp_route_propagation_enabled = true
    routes = [
      {
        address_prefix         = "10.0.0.0/8"
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-01"
        next_hop_in_ip_address = "10.45.240.68"
        next_hop_type          = "VirtualAppliance"
      },
      {
        address_prefix         = "172.16.0.0/12"
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-02"
        next_hop_in_ip_address = "10.145.240.68"
        next_hop_type          = "VirtualAppliance"
      },
      {
        address_prefix         = "192.168.0.0/16"
        name                   = "rt-ProddrApgtwSnet-wcentralus-br-onpprem-rfc1918pvt-03"
        next_hop_in_ip_address = "10.145.240.68"
        next_hop_type          = "VirtualAppliance"
      }
    ]
    tags = {}
  }
}