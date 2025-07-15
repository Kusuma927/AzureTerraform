
variable "project_name" {
  description = "Name of the Azure DevOps project"
  type        = string
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
}
variable "azuredevops_org_url" { 
  type        = string
  default     = "https://dev.azure.com/bondilikusumakumari"
}

variable "azuredevops_pat" { 
  type        = string
  default     = "ApwmZQUcvT7WecLpMncxgRqN3ug24BxRu3wxgszz7smKo0ngL9tSJQQJ99BGACAAAAAAAAAAAAASAZDOeDOm"
}
