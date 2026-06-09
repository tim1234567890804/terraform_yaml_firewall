locals {
  domain_config = yamldecode(file("${path.module}/firewall-domains.yaml"))
  blocked_domains = local.domain_config.blocked_domains
  allowed_domains = local.domain_config.allowed_domains

}