module "dev_vpc" {
 source = "../../modules/aws-vpc"
 cidr_block       = var.cidr_block
 instance_tenancy = var.instance_tenancy
 tags = var.tags
}


module "dev_subnet" {
source = "../../modules/aws-subnet"
 vpc_id = module.dev_vpc.id
 subnet_cidr_block = var.subnet_cidr_block
 tags = var.tags  
}