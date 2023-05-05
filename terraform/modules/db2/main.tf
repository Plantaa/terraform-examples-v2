terraform {
  required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "1.52.1"
    }
  }
}

resource "ibm_resource_instance" "db2" {
  name              = var.db2_name
  service           = "dashdb-for-transactions"
  plan              = var.db2_plan
  location          = var.cloud_region
  resource_group_id = var.resource_group_id

  timeouts {
    create = "90m"
  }
}

resource "ibm_resource_key" "db2" {
  name                 = var.db2_key_name
  role                 = var.db2_key_role
  resource_instance_id = ibm_resource_instance.db2.id
}