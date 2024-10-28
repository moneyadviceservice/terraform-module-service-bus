# terraform-module-service-bus
A Terraform module for the creation of Service Buses
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
| <a name="input_env"></a> [env](#input\_env) | The environment to deploy to | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"uksouth"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of your Cosmos DB Account | `string` | n/a | yes |
| <a name="input_product"></a> [product](#input\_product) | The product name | `string` | n/a | yes |
| <a name="input_queues"></a> [queues](#input\_queues) | Map of service bus queues to create. | <pre>map(object({<br>    queue_name = string<br>  }))</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group your Cosmos DB account will be assigned to | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_servicebus_namespace_id"></a> [servicebus\_namespace\_id](#output\_servicebus\_namespace\_id) | n/a |
<!-- END_TF_DOCS -->