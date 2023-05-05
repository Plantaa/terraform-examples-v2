terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}


resource "ibm_resource_instance" "appid_instance" {
  name     = var.appid_name
  service  = "appid"
  plan     = var.appid_plan
  location = var.cloud_region
}