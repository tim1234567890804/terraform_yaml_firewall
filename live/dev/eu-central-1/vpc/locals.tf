locals {
  #Get a list of all AZ's, but only reference the first 3 (if the AZ has 4 AZ's this will cause problems).
  azs = slice(data.aws_availability_zones.available.names, 0, 3)

  public_subnets = [
    for i in range(length(local.azs)) :
    cidrsubnet(var.vpc_cidr, 8, i)
  ]

  private_subnets = [
    for i in range(length(local.azs)) :
    cidrsubnet(var.vpc_cidr, 8, i + 10)
  ]

  #Variables can't reference other variables, so these are defined in locals.
  region      = "eu-central-1"
  environment = "dev"
  project     = "example"

}