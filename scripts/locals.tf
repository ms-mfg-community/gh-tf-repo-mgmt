locals {
  github_repositories = {
    repo1 = {
      github_repository = "tf-created-repo-1"
      repository_description = "description for this repository"
      visibility = "private"
    },
    repo2 = {
      github_repository = "tf-created-repo-2"
      repository_description = "description for another repository"
      visibility = "private"
    }
  }

  github_organization = "ms-mfg-community"
}