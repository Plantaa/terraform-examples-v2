variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your Cloudant instance in"
}

variable "resource_group_id" {
  description = "The ID for the desired resource group to provision the assistant"
  type        = string
}

variable "cloudant_name" {
  type        = string
  default     = "oi-bot-cloudant"
  description = "Desired name for your Cloudant instance"
}

variable "cloudant_plan" {
  type        = string
  default     = "lite"
  description = "Desired plan for your Cloudant instance"
}

variable "cloudant_key_name" {
  type        = string
  default     = "oi-bot-cloudant-key"
  description = "Desired name for your Cloudant instance credentials"
}

variable "cloudant_key_role" {
  type        = string
  default     = "Manager"
  description = "Desired role for your Cloudant instance credentials"
}
