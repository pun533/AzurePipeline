terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "testpun"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "punstore1"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "contest"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "pun.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}

provider "azurerm" {
  features {  }
  subscription_id = "c281469d-0e2a-4da0-ae07-e1f8b42520f1"


}


resource "azurerm_resource_group" "Dhunu-rg" {
  name     = "Dhannu"
  location = "West Europe"
}