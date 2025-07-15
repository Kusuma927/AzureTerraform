/*resource "azuredevops_project" "this" {
  name               = var.project_name
  description        = var.project_description
  visibility         = var.project_visibility
  version_control    = "Git"

  features = {
    boards       = "enabled"
    repositories = "enabled"  
  }
}

resource "azuredevops_git_repository" "repo" {
  project_id = azuredevops_project.this.id
  name       = var.repo_name

  initialization {
    init_type = "Clean"
  }
}*/

resource "azuredevops_project" "this" {
  name            = var.project_name
  description     = var.project_description
  visibility      = var.project_visibility
  version_control = "Git"
  features = {
    boards       = "enabled"
    repositories = "enabled"
  }
}

resource "azuredevops_git_repository" "repo" {
  project_id = azuredevops_project.this.id
  name       = var.repo_name

  initialization {
    init_type = "Clean"
  }

  lifecycle {
    ignore_changes = [
      initialization,
    ]
  }
}

resource "null_resource" "rename_default" {
  depends_on = [azuredevops_project.this]

  provisioner "local-exec" {
    command = <<EOT
      az repos update --project "${var.project_name}" --repository "${var.project_name}" --name "${var.project_name}-default"
    EOT
    environment = {
      AZURE_DEVOPS_EXT_PAT = var.azuredevops_pat
      AZURE_DEVOPS_ORG_URL = var.azuredevops_org_url
    }
  }
}