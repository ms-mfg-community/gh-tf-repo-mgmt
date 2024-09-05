resource "github_repository" "this" {
  for_each    = local.github_repositories
  name        = each.value.github_repository
  description = each.value.repository_description
  visibility  = each.value.visibility
}