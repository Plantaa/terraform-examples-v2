variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your Watson Studio instance in"
}

variable "resource_group_id" {
  description = "The ID of the desired resource group to provision the Watson Studio"
  type        = string
}

variable "ws_name" {
  type        = string
  default     = "oi-bot-ws"
  description = "Desired name for your Watson Studio instance"
}

variable "ws_plan" {
  type        = string
  default     = "free-v1"
  description = "Desired plan for your Watson Studio instance"
}