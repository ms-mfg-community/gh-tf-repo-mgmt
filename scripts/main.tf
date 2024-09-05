# Add teams to the organization
resource "github_team" "teams" {
  for_each    = local.github_teams
  name        = each.value.team_name
  description = each.value.description
  privacy     = each.value.privacy
}

# Add repositories to the organization
resource "github_repository" "repositories" {
  for_each    = local.github_repositories
  name        = each.value.github_repository
  description = each.value.repository_description
  visibility  = each.value.visibility
}

# Link teams to repositories
resource "github_team_repository" "team_repos" {
  for_each            = local.github_repositories
  team_id             = lookup(github_team.teams, each.value.owner).id
  repository          = github_repository.repositories[each.key].name
  permission          = "admin" # Let's set the owner for delegation
}