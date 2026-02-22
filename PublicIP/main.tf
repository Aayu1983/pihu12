resource "azurerm_resource_group" "rg_block" {
  name     ="my-rg"
  location = "westus"
}

resource "azurerm_public_ip" "pubIP" {
  for_each                = var.pubIPs
  name                    = each.value.name
  resource_group_name     = data.azurerm_resource_group.data_rg[each.key].name
  location                = each.value.location
  allocation_method       = each.value.allocation_method
  zones                   = each.value.zones
  ddos_protection_mode    = each.value.ddos_protection_mode
  ddos_protection_plan_id = each.value.ddos_protection_plan_id
  domain_name_label       = each.value.domain_name_label
  edge_zone               = each.value.edge_zone
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  ip_tags                 = each.value.ip_tags
  public_ip_prefix_id     = each.value.public_ip_prefix_id
  reverse_fqdn            = each.value.reverse_fqdn
  sku                     = each.value.sku
  sku_tier                = each.value.sku_tier
  tags                    = each.value.tags
}
