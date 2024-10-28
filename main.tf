resource "azurerm_servicebus_namespace" "this" {
  name                = var.name == null ? "${var.product}-${var.env}" : "${var.name}-${var.env}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}

resource "azurerm_servicebus_queue" "this" {
  for_each     = var.queues
  name         = each.value.queue_name
  namespace_id = azurerm_servicebus_namespace.this.id

  partitioning_enabled = true
}