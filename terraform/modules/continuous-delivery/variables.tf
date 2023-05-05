variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your Continuous Delivery Service in"
}

variable "resource_group_id" {
  description = "The ID of the desired resource group to provision the Continuous Delivery Service"
  type        = string
}

variable "cd_name" {
  type        = string
  default     = "oi-bot-cd"
  description = "Desired name for your Continuous Delivery service"
}

variable "cd_plan" {
  type        = string
  default     = "lite"
  description = "Desired plan for your Continuous Delivery service"
}
