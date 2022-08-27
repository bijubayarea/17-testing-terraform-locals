
# vpc  : staging
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  name = "vpc-${var.resource_tags["project"]}-${var.resource_tags["environment"]}"
  cidr = var.vpc_cidr_block

  azs             = data.aws_availability_zones.available.names
  private_subnets = slice(var.private_subnet_cidr_blocks, 0, var.private_subnet_count)
  public_subnets  = slice(var.public_subnet_cidr_blocks, 0, var.public_subnet_count)

  enable_nat_gateway = true
  enable_vpn_gateway = var.enable_vpn_gateway

  tags = var.resource_tags
}