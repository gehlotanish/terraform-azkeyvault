## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| keyvault_name | Azure keyvault Name. | `string` | n/a | yes |
| location | Azure Region location | `string` | n/a | yes |
| azurerm_resource_group_name | Azure Resource Group Name | `string` | n/a | yes |
| environment | Resource deployment ENV `dev, tst, prod` | `string` | n/a | yes |
| sku_name | KeyVault SKU Name. Possible values are standard and premium" | `string` | standard | yes |
| purge_protection | Defaults to false, Once Purge Protection has been Enabled it's not possible to Disable it | `bool` | false | yes |
| soft_delete_retention_days | The number of days that items should be retained for once soft-deleted. This value can be between `7` and `90` | `number` | 7 | yes |
| public_network_access_enabled | Whether public network access is allowed for this Key Vault. Defaults to true | `bool` | true | yes |
| network_acls | Object with attributes: `bypass`, `default_action`, `ip_rules`, `virtual_network_subnet_ids`. Set to `null` to disable. See https://www.terraform.io/docs/providers/azurerm/r/key_vault.html#bypass for more information. | `object` | true | yes |
| diag_enabled | Enabled diagnostic settings for KV | `bool` | false | yes | 
| log_analytics_name | Azure log analytics name (depends on var diag_enabled ) | `string` | n/a | no |

