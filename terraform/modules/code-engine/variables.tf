variable "resource_group_id" {
  description = "The ID for the desired resource group to provision the assistant"
  type        = string
}

variable "ce_project_name" {
  description = "Desired name for your Code Engine project"
  type        = string
  default     = "oi-bot-ce-project"
}