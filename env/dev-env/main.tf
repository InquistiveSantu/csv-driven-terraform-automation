module "azurerm_resource_group" {

source = "../../Modules/azurerm_resource_group"
    RG     = var.RG


}


module "azurerm_storage_account" {

  depends_on = [module.azurerm_resource_group]

  source = "../../Modules/azurerm_stg"
  Stg    = var.Stg

}

