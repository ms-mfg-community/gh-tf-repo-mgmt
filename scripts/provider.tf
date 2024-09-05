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
  owner = local.github_organization
  app_auth {
    id              = var.github_app_id
    installation_id = var.github_app_installation_id
    pem_file        = file(env("GITHUB_APP_PEM_FILE"))
  }
}

