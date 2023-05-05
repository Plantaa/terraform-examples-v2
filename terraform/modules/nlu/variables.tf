variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your NLU instance in"
}

variable "resource_group_id" {
  description = "The ID of the desired resource group to provision the NLU"
  type        = string
}

variable "nlu_name" {
  type        = string
  default     = "oi-bot-nlu"
  description = "Desired name for your NLU instance"
}

variable "nlu_plan" {
  type        = string
  default     = "free"
  description = "Desired plan for your NLU instance"
}

variable "nlu_key_name" {
  type        = string
  default     = "oi-bot-nlu-key"
  description = "Desired name for your NLU credentials"
}

variable "nlu_key_role" {
  type        = string
  default     = "Manager"
  description = "Desired role for your NLU credentials"
}
