variable "cloud_region" {
  type        = string
  default     = "us-south"
  description = "Desired region to provision your DB2 instance in"
}

variable "resource_group_id" {
  description = "The ID of the desired resource group to provision the DB2 instance"
  type        = string
}

variable "db2_name" {
  type        = string
  default     = "oi-bot-db2"
  description = "Desired name for your DB2 instance"
}

variable "db2_plan" {
  type        = string
  default     = "standard"
  description = "Desired plan for your DB2 instance"
}

variable "db2_key_name" {
  type        = string
  default     = "oi-bot-db2-key"
  description = "Desired name for your DB2 credentials"
}

variable "db2_key_role" {
  type        = string
  default     = "Manager"
  description = "Desired role for your DB2 credentials"
}
