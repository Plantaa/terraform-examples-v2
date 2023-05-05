terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "assistant" {
  name              = var.assistant_name
  service           = "conversation"
  plan              = "free"
  location          = var.cloud_region
  resource_group_id = var.resource_group_id
}

resource "ibm_resource_key" "assistant" {
  name                 = var.assistant_key_name
  role                 = var.assistant_key_role
  resource_instance_id = ibm_resource_instance.assistant.id
}
