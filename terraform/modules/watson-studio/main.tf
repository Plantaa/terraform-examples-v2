terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "ws" {
  name              = var.ws_name
  service           = "data-science-experience"
  plan              = var.ws_plan
  location          = var.cloud_region
  resource_group_id = var.resource_group_id
}