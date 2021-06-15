module "vpc" {
    source  = "app.terraform.io/leonlin-training/network/google//modules/vpc"
    version = "3.2.2"

    project_id   = "var.project"
    network_name = "gaurav-network"

    shared_vpc_host = false

}

module "network_subnets" {
  source  = "app.terraform.io/leonlin-training/network/google//modules/subnets"
  version = "3.2.2"
  # insert required variables here
  project_id   = "var.project"
  network_name = "gaurav-network"

  subnets = [
  {
    subnet_name   = "gaurav-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}