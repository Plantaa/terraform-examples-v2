terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "nlu" {
  name              = var.nlu_name
  service           = "natural-language-understanding"
  plan              = var.nlu_plan
  location          = var.cloud_region
  resource_group_id = var.resource_group_id
}

resource "ibm_resource_key" "nlu" {
  name                 = var.nlu_key_name
  role                 = var.nlu_key_role
  resource_instance_id = ibm_resource_instance.nlu.id
}
