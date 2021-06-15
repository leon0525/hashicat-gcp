module "vpc" {
    source  = "app.terraform.io/leonlin-training/network/google//modules/vpc"
    version = "3.2.2"

    project_id   = "var.project"
    network_name = "gaurav-network"

    shared_vpc_host = false

}