# terraform-module-service-bus
A Terraform module for the creation of [Service Buses](https://learn.microsoft.com/en-us/azure/service-bus-messaging/service-bus-messaging-overview).

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_servicebus_namespace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace) | resource |
| [azurerm_servicebus_queue.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_delete_on_idle"></a> [auto\_delete\_on\_idle](#input\_auto\_delete\_on\_idle) | (Optional) The ISO 8601 timespan duration of the idle interval after which the Queue is automatically deleted, minimum of 5 minutes. | `string` | `"null"` | no |
| <a name="input_default_message_ttl"></a> [default\_message\_ttl](#input\_default\_message\_ttl) | Optional) The ISO 8601 timespan duration of the TTL of messages sent to this queue. | `string` | `"P1D"` | no |
| <a name="input_enable_partitioning"></a> [enable\_partitioning](#input\_enable\_partitioning) | (Optional) Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers. | `bool` | `false` | no |
| <a name="input_env"></a> [env](#input\_env) | The environment to deploy to | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"uksouth"` | no |
| <a name="input_lock_duration"></a> [lock\_duration](#input\_lock\_duration) | (Optional) The ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. | `string` | `"PT12S"` | no |
| <a name="input_max_delivery_count"></a> [max\_delivery\_count](#input\_max\_delivery\_count) | (Optional) Integer value which controls when a message is automatically dead lettered. | `number` | `3` | no |
| <a name="input_max_message_size_in_kilobytes"></a> [max\_message\_size\_in\_kilobytes](#input\_max\_message\_size\_in\_kilobytes) | (Optional) Integer value which controls the maximum size of a message allowed on the queue for Premium SKU. | `number` | `256` | no |
| <a name="input_max_size_in_megabytes"></a> [max\_size\_in\_megabytes](#input\_max\_size\_in\_megabytes) | (Optional) Integer value which controls the size of memory allocated for the queue. | `number` | `1024` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of your Service Bus Namespace | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | The product name | `string` | n/a | yes |
| <a name="input_queues"></a> [queues](#input\_queues) | Map of service bus queues to create. | <pre>map(object({<br>    queue_name = string<br>  }))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group your Cosmos DB account will be assigned to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_servicebus_namespace_id"></a> [servicebus\_namespace\_id](#output\_servicebus\_namespace\_id) | n/a |
<!-- END_TF_DOCS -->