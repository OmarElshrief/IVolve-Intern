
provider "aws" {
  region = var.region
}

module "network" {
  source              = "./Network_mod"
  /*
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.subnet_cidrs["public"]
  private_subnet_cidrs = [var.subnet_cidrs["private1"], var.subnet_cidrs["private2"]]
  availability_zones  = var.availability_zones
  */
}