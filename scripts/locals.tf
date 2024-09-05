locals {
  github_repositories = {
    repo1 = {
      github_repository = "tf-created-repo-1"
      repository_description = "description for this repository"
      visibility = "private"
      owner = "tf-team1" #Setting team ownership, team must map to a team that exists in GitHub and/or is created in GitHub_Teams below
    },
    repo2 = {
      github_repository = "tf-created-repo-2"
      repository_description = "description for another repository"
      visibility = "private"
      owner = "tf-team2"
    }
  }

  github_teams = {
    team1 = {
      team_name = "tf-team1"
      description = "team1 description"
      privacy = "closed"
    },
    team2 = {
      team_name = "tf-team2"
      description = "team2 description"
      privacy = "closed"
      }
  }

  github_organization = "ms-mfg-community"
}