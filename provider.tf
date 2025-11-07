terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "ambati-org"

    workspaces {
      name = "iac-${var.environment}"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
