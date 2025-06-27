data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" this {
  name     = var.az_rg_name
  location = var.az_location
}

resource "azurerm_data_factory" this {
  name = var.az_data_factory_name
  location = var.az_location
  resource_group_name = var.az_rg_name
}

resource "azurerm_data_factory_pipeline" this {
  name = var.az_data_fact_pipeline_name
  data_factory_id = azurerm_data_factory.this.id
}