variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your Cognos instance in"
}

variable "resource_group_id" {
  description = "The ID for the desired resource group to provision the assistant"
  type        = string
}

variable "cognos_name" {
  type        = string
  default     = "oi-bot-cognos"
  description = "Desired name for your Cognos instance"
}

variable "cognos_plan" {
  type        = string
  default     = "lite"
  description = "Desired plan for your Cognos instance"
}

variable "cognos_key_name" {
  type        = string
  default     = "oi-bot-cognos-key"
  description = "Desired name for your Cognos instance credentials"
}

variable "cognos_key_role" {
  type        = string
  default     = "Manager"
  description = "Desired role for your Cognos instance credentials"
}
