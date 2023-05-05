terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "cognos" {
  name              = var.cognos_name
  service           = "dynamic-dashboard-embedded"
  plan              = var.cognos_plan
  location          = var.cloud_region
  resource_group_id = var.resource_group_id
}

resource "ibm_resource_key" "cognos" {
  name                 = var.cognos_key_name
  role                 = var.cognos_key_role
  resource_instance_id = ibm_resource_instance.cognos.id
}