/*
 * IBM Cloud Variables
*/
variable "ibmcloud_api_key" {
  description = "Your IBM Cloud API Key"
  type        = string
  sensitive   = true
}

variable "cloud_region" {
  description = "Desired region to provision the assistant instance in"
  type        = string
  default     = "us-south"
}

variable "resource_group" {
  description = "Desired resource group to provision the assistant"
  type        = string
  default     = "Chat Bot IBM"
}


/*
 * Watson Assistant variables
*/
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


/*
 * AppID variables
*/
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


/*
 * Code Engine project variables
*/
variable "ce_project_name" {
  description = "Desired name for your Code Engine project"
  type        = string
  default     = "oi-bot-ce-project"
}


/*
 * Cloudant variables
*/
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


/*
 * Cognos variables
*/
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


/*
 * Continuous Delivery variables
*/
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


/*
 * DB2 variables
*/
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


/*
 * NLU variables
*/
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

/*
 * Watson Studio variables
*/
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