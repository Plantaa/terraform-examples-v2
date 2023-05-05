terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "cd_service_instance" {
  name              = var.cd_name
  service           = "continuous-delivery"
  plan              = var.cd_plan
  location          = var.cloud_region
  resource_group_id = var.resource_group_id
}