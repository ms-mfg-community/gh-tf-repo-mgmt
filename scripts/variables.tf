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