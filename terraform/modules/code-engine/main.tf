terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_code_engine_project" "code_engine_project_instance" {
  name              = var.ce_project_name
  resource_group_id = var.resource_group_id
}