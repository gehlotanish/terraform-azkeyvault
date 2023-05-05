terraform {
  required_version = "~> 1.2.2"
  
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.55.0"
    }
  }
}
