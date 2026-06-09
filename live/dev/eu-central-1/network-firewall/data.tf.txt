#Region not needed here as the provider is using it.
data "aws_availability_zones" "available" {
  state  = "available"
}
