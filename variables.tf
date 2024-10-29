variable "name" {
  type        = string
  description = "The name of your Service Bus Namespace"
}

variable "env" {
  type        = string
  description = "The environment to deploy to"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "resource_group_name" {
  type        = string
  description = "The resource group your Cosmos DB account will be assigned to"
}

variable "product" {
  type        = string
  description = "The product name"
}

variable "queues" {
  type = map(object({
    queue_name = string
  }))
  description = "Map of service bus queues to create."
  default     = {}
}

variable "default_message_ttl" {
  type        = string
  description = "Optional) The ISO 8601 timespan duration of the TTL of messages sent to this queue."
  default     = "P1D"
}

variable "lock_duration" {
  type        = string
  description = "(Optional) The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers."
  default     = "PT12S"
}

variable "max_delivery_count" {
  type        = number
  description = "(Optional) Integer value which controls when a message is automatically dead lettered."
  default     = 3
}

variable "max_message_size_in_kilobytes" {
  type        = number
  description = "(Optional) Integer value which controls the maximum size of a message allowed on the queue for Premium SKU."
  default     = 256
}

variable "max_size_in_megabytes" {
  type        = number
  description = "(Optional) Integer value which controls the size of memory allocated for the queue."
  default     = 1024
}

variable "enable_partitioning" {
  type        = bool
  description = "(Optional) Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers."
  default     = false
}

variable "auto_delete_on_idle" {
  type        = string
  description = "(Optional) The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes."
  default     = null
}