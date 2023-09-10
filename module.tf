resource "azurerm_monitor_diagnostic_setting" "diag" {
  name                           = "${var.resource_name}-diag"
  target_resource_id             = var.resource_id
  eventhub_name                  = var.diagnostics_map.eh_name
  eventhub_authorization_rule_id = var.diagnostics_map.eh_id != null ? "${var.diagnostics_map.eh_id}/authorizationRules/RootManageSharedAccessKey" : null
  log_analytics_workspace_id     = var.log_analytics_workspace_id
  storage_account_id             = var.diagnostics_map.diags_sa
  log_analytics_destination_type = var.log_analytics_workspace_dedicated

  dynamic "enabled_log" {
    for_each = var.diagnostics_logs_map.log
    content {
      category = enabled_log.value[0]
    }
  }

  dynamic "metric" {
    for_each = var.diagnostics_logs_map.metric
    content {
      category = metric.value[0]
    }
  }
}
