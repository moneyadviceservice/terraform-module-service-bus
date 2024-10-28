variable "name" {
  type        = string
  description = "The name of your Cosmos DB Account"
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