
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.1.0"
    }
        
    }
        backend "azurerm"{
        resource_group_name="Human"
        storage_account_name="humnanstorgae"
        container_name="humanastbackup"
        key="backup.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgs"{
    name="Human"
    location="East US"
}
resource "azurerm_resource_group" "rgs3"{
    name="Human2"
    location="East US"
}
resource "azurerm_resource_group" "rgs4"{
    name="Human3"
    location="East US"
}
resource "azurerm_storage_account" "stg"{
    name="humnanstorgae"
    location=azurerm_resource_group.rgs.location
    resource_group_name=azurerm_resource_group.rgs.name
    account_tier="Standard"
    account_replication_type="GRS"
}
resource "azurerm_storage_account" "stg1"{
    name="humnanstorgae1"
    location=azurerm_resource_group.rgs3.location
    resource_group_name=azurerm_resource_group.rgs3.name
    account_tier="Standard"
    account_replication_type="GRS"
}
resource "azurerm_storage_account" "stg4"{
    name="humnanstorgae2"
    location=azurerm_resource_group.rgs3.location
    resource_group_name=azurerm_resource_group.rgs3.name
    account_tier="Standard"
    account_replication_type="GRS"
}

?????????????