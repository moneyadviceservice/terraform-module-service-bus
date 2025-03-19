resource "azurerm_servicebus_namespace" "this" {
  name                         = var.name == null ? "${var.product}-sbns-${var.env}" : "${var.name}-${var.env}"
  location                     = var.location
  resource_group_name          = var.resource_group_name
  sku                          = var.sku
  capacity                     = var.capacity
  premium_messaging_partitions = var.premium_messaging_partitions

  dynamic "network_rule_set" {
    for_each = var.subnet_id != null ? [1] : []
    content {
      default_action                = var.network_rule_set_default_action
      public_network_access_enabled = var.public_network_access_enabled
      trusted_services_allowed      = var.trusted_services_allowed
      network_rules {
        subnet_id = var.subnet_id

      }
    }
  }
}



resource "azurerm_servicebus_queue" "this" {
  for_each     = var.queues
  name         = each.value.queue_name
  namespace_id = azurerm_servicebus_namespace.this.id

  partitioning_enabled  = var.enable_partitioning
  auto_delete_on_idle   = var.auto_delete_on_idle
  default_message_ttl   = var.default_message_ttl
  lock_duration         = var.lock_duration
  max_delivery_count    = var.max_delivery_count
  max_size_in_megabytes = var.max_size_in_megabytes
}