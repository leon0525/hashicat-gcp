module "vpc" {
    source  = "app.terraform.io/leonlin-training/network/google/"
    version = "3.2.2"

    project_id   = "var.project"
    network_name = "gaurav-network"

    shared_vpc_host = false
 
    subnets = [
      {
        subnet_name   = "gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
      }
    ]

}