//repositório online onde o tfstate do ambiente (test) onde estou a trabalhar vai ficar guardado
terraform {

  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate1645"
    container_name       = "test-filipe-oliveira-tfstate"
    key                  = "terraform.tfstate"
  }
}