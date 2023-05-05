variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your AppID instance in"
}

variable "appid_name" {
  description = "Desired name for the AppID instance"
  type        = string
  default     = "oi-bot-appid"
}

variable "appid_plan" {
  description = "Desired plan for the AppID instance"
  type        = string
  default     = "lite"
}