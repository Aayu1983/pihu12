resource "azurerm_route_table" "route_block" {
  for_each            = var.route_tables
  name                = each.value.route_table_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name


  bgp_route_propagation_enabled = each.value.bgp_route_propagation_enabled

  dynamic "route" {
    for_each = each.value.routes
    content {

      name                   = route.value.name
      address_prefix         = route.value.address_prefix
      next_hop_type          = route.value.next_hop_type
      next_hop_in_ip_address = lookup(route.value, "next_hop_in_ip_address", null)
    }
  }
}