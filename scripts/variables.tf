variable app_id {
  description = "The GitHub App ID"
  type = string
}

variable app_installation_id {
  description = "The GitHub App Installation ID"
  type = string
}

variable app_pem_file {
  description = "The path to the GitHub App PEM file"
  type = string
}

variable github_organization {
  description = "The GitHub organization to manage"
  type = string
  default = "ms-mfg-community"
}

variable "github_repositories" {
  type = map(object({
    github_repository = string
    repository_description = string
    repository_visibility = string
  }))
}