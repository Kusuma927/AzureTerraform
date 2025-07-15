
variable "project_name" {
  description = "Name of the Azure DevOps project"
  type        = string
  default     = "My Terraform Project"
}

variable "project_description" {
  description = "Description of the Azure DevOps project"
  type        = string
  default     = "Managed by Terraform"
}

variable "project_visibility" {
  description = "Visibility of the Azure DevOps project (private or public)"
  type        = string
  default     = "private"
}

variable "repo_name" {
  description = "Name of the new repository"
  type        = string
  default     = "My Terraform Repo"
}

