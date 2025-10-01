provider "github" {
  token = var.github_access_token
}

resource "github_repository" "tf-github-repo" {
  name        = "test-repo-from-tf"
  description = "This is a test repository created by terraform"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository" "tf-github-repo-b" {
  name        = "test-repo-from-tf-b"
  description = "This is a test repository created by terraform"
  visibility  = "public"
  auto_init   = true
}

/*
Should run terraform init first else it will give this if terraform plan is done
in the init it would download the required providers 
( verify by doing ls -a before and after the init command)
Inconsistent dependency lock file
│ 
│ The following dependency selections recorded in the lock file are inconsistent with the current configuration:
│   - provider registry.terraform.io/hashicorp/github: required by this configuration but no version is selected
│   - provider registry.terraform.io/hashicorp/test-repo-from-tf: required by this configuration but no version is selected
│ 
│ To make the initial dependency selections that will initialize the dependency lock file, run:
│   terraform init
*/
