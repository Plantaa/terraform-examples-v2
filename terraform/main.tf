terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "1.52.1"
    }
  }
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.cloud_region
}

data "ibm_resource_group" "rg" {
  name = var.resource_group
}

module "watson_assistant" {
  source = "./modules/assistant"

  cloud_region       = var.cloud_region
  resource_group_id  = data.ibm_resource_group.rg.id
  assistant_name     = var.assistant_name
  assistant_key_name = var.assistant_key_name
  assistant_key_role = var.assistant_key_role
}

module "app_id" {
  source = "./modules/app-id"

  cloud_region = var.cloud_region
  appid_name   = var.appid_name
  appid_plan   = var.appid_plan
}

module "cloudant" {
  source = "./modules/cloudant"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  cloudant_name     = var.cloudant_name
  cloudant_plan     = var.cloudant_plan
  cloudant_key_name = var.cloudant_key_name
  cloudant_key_role = var.cloudant_key_role
}

module "code_engine_project" {
  source = "./modules/code-engine"

  resource_group_id = data.ibm_resource_group.rg.id
  ce_project_name   = var.ce_project_name
}

module "cognos" {
  source = "./modules/cognos"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  cognos_name       = var.cognos_name
  cognos_plan       = var.cognos_plan
  cognos_key_name   = var.cognos_key_name
  cognos_key_role   = var.cognos_key_role
}

module "continuous_delivery" {
  source = "./modules/continuous-delivery"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  cd_name           = var.cd_name
  cd_plan           = var.cd_plan
}

module "db2" {
  source = "./modules/db2"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  db2_name          = var.db2_name
  db2_plan          = var.db2_plan
  db2_key_name      = var.db2_key_name
  db2_key_role      = var.db2_key_role
}

module "nlu" {
  source = "./modules/nlu"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  nlu_name          = var.nlu_name
  nlu_plan          = var.nlu_plan
  nlu_key_name      = var.nlu_key_name
  nlu_key_role      = var.nlu_key_role
}

module "ws" {
  source = "./modules/watson-studio"

  cloud_region      = var.cloud_region
  resource_group_id = data.ibm_resource_group.rg.id
  ws_plan           = var.ws_plan
  ws_name           = var.ws_name
}