variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your Assistant instance in"
}

variable "resource_group_id" {
  description = "The ID of the desired resource group to provision the assistant"
  type        = string
}

variable "assistant_name" {
  description = "Desired name for the assistant instance"
  type        = string
  default     = "oi-bot-wa"
}

variable "assistant_key_name" {
  description = "Desired name for the assistant instance credentials"
  type        = string
  default     = "oi-bot-wa-key"
}

variable "assistant_key_role" {
  description = "Desired role for the assistant instance credentials"
  type        = string
  default     = "Manager"
}