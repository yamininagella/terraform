resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block
  tags = var.tags
}

