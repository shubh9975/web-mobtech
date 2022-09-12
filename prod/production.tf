resource "random_id" "random_id_prifix" {
  byte_length = 2
  }

 locals {
   production_availability_zones = ["${var.region}a", "${var.region}b, "${var.region}c"]

   }

module "NETWORKING" {
   source = "./modules/Networking"
   region =var.region
   environment =var.environment
   vpc_cidr =var.vpc_cidr
   public_subnet_cidr =var.public_subnet_cidr
   private_subnet_cidr =var.public_subnet_cidr
   availability_zones =local.production_availability_zone


}
