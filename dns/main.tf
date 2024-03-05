locals {
  domain_name = "thacktech.scot"
}

module "dns_records" {
  source = "libre-devops/dns-records/digitalocean"

  records = [
    {
      domain_name  = local.domain_name
      record_name  = "www"
      record_type  = "A"
      record_value = "192.168.1.0"
    },
  ]
}
