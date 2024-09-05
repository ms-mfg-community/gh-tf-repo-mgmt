variable github_organization {
  description = "The GitHub organization to manage"
  type = string
  default = "ms-mfg-community"
}

variable "github_app_id" {
  description = "The ID of the GitHub App"
  type        = string
}

variable "github_app_installation_id" {
  description = "The installation ID of the GitHub App"
  type        = string
}