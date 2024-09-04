terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
  backend "azurerm" {
  }
}

provider "github" {
  owner = var.github_organization
  app_auth {}
}

