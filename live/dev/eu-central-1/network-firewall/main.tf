module "network_firewall" {
  source = "../../../../modules/vpc" #This path doesnt exist.

  name = "core-firewall" #Poor description.

  vpc_id = module.vpc.vpc_id #Module lookups will not function outside of single terraform run (should be data call).

  subnet_mapping = [
    for subnet in module.vpc.public_subnet_ids : {
      subnet_id = subnet
    }
  ]

  firewall_policy_arn = aws_networkfirewall_firewall_policy.this.arn
}
