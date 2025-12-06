data "azurerm_container_registry" "acr" {
  name                = "dkcacrdevtodoapp01"
  resource_group_name = "dkc-rg-dev-todoapp-01"
}
