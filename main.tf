resource "azurerm_servicebus_namespace" "this" {
  name                = var.name == null ? "${var.product}-sbns-${var.env}" : "${var.name}-${var.env}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  public_network_access_enabled = var.public_network_access_enabled

  network_rule_set {
    default_action                = "Allow"
    public_network_access_enabled = var.public_network_access_enabled
    network_rules {
      subnet_id = var.subnet_id
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