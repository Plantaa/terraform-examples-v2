terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_cloudant" "cloudant" {
  name              = var.cloudant_name
  location          = var.cloud_region
  plan              = var.cloudant_plan
  resource_group_id = var.resource_group_id

  timeouts {
    create = "90m"
  }
}

resource "ibm_resource_key" "cloudant" {
  name                 = var.cloudant_key_name
  role                 = var.cloudant_key_role
  resource_instance_id = ibm_cloudant.cloudant.id
}
