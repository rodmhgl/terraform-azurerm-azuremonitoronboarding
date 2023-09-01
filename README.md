## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.71.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.71.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_monitor_diagnostic_setting.diag](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/monitor_diagnostic_setting) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_diagnostics_logs_map"></a> [diagnostics\_logs\_map](#input\_diagnostics\_logs\_map) | (Optional) Send the logs generated to diagnostics | `map` | <pre>{<br>  "log": [],<br>  "metric": []<br>}</pre> | no |
| <a name="input_diagnostics_map"></a> [diagnostics\_map](#input\_diagnostics\_map) | (Optional) Storage Account and Event Hub data for the diagnostics | `map` | <pre>{<br>  "diags_sa": null,<br>  "eh_id": "",<br>  "eh_name": null<br>}</pre> | no |
| <a name="input_log_analytics_workspace_dedicated"></a> [log\_analytics\_workspace\_dedicated](#input\_log\_analytics\_workspace\_dedicated) | (Optional) Set to Dedicated for logs to be sent into resource specific tables instead of AzureDiagnostics table | `any` | `null` | no |
| <a name="input_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#input\_log\_analytics\_workspace\_id) | (Optional) The ID of the Log Analytics Workspace which the OMS Agent should send data to. | `string` | `null` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | (Required) ID of the resource | `string` | n/a | yes |
| <a name="input_resource_name"></a> [resource\_name](#input\_resource\_name) | (Required) Name of the resource | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_monitor_diagnostic_setting_id"></a> [monitor\_diagnostic\_setting\_id](#output\_monitor\_diagnostic\_setting\_id) | The ID of the Diagnostic Setting. |
