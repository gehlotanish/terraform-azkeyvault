provider azurerm {
  features {}
}

### Key vault

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "example" {
  name                       = var.keyvault_name
  location                   = var.location
  resource_group_name        = var.azurerm_resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  purge_protection_enabled   = var.purge_protection
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "create",
      "get",
    ]

    secret_permissions = [
      "set",
      "get",
      "delete",
      "purge",
      "recover"
    ]
  }
}

resource "azurerm_log_analytics_workspace" "example" {
  name                = var.log_analytics_name
  location            = var.location
  resource_group_name = var.azurerm_resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_monitor_diagnostic_setting" "example" {
  name                       = var.kv_diagnostic_name
  target_resource_id         = azurerm_key_vault.example.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.example.id

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = false
    }
  }
}
