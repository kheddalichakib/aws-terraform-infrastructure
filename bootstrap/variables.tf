variable "region" {
  description = "AWS region where resources are created"
  type        = string
  default     = "eu-west-3"
}

variable "project" {
  description = "Project name, used to name resources"
  type        = string
  default     = "devops-lab"
}