module "vpc" {
  source = "../../../../modules/vpc"

  name = "${var.environment}-${var.region}"

  cidr_block = "${var.vpc_cidr}"

  azs = data.aws_availability_zones.available.names

  public_subnets = [
    cidrsubnet(var.vpc_cidr, 8, 0),
    cidrsubnet(var.vpc_cidr, 8, 1),
    cidrsubnet(var.vpc_cidr, 8, 2),
  ]

  private_subnets = [
    cidrsubnet(var.vpc_cidr, 8, 10),
    cidrsubnet(var.vpc_cidr, 8, 11),
    cidrsubnet(var.vpc_cidr, 8, 12),
  ]

  tags = merge(local.common_tags, {
    Name = "${var.name}-vpc"
  })
}