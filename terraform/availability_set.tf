resource "azurerm_availability_set" "app_set" {
  name                         = "app-set"
  location                     = azurerm_resource_group.main.location
  resource_group_name          = azurerm_resource_group.main.name
  platform_fault_domain_count  = 3
  platform_update_domain_count = 3
  depends_on = [

  ]
}