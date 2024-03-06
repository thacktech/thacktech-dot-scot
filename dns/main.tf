locals {
  domain_name = "thacktech.scot"
  public_ip   = "45.95.16.160"
}

module "dns_records" {
  source = "libre-devops/dns-records/digitalocean"

  records = [
    {
      domain_name  = local.domain_name
      record_name  = "www"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "@"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "mail"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "cpanel"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "webmail"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "webdisk"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "cpcontacts"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "cpcalendars"
      record_type  = "A"
      record_value = local.public_ip
    },
    {
      domain_name  = local.domain_name
      record_name  = "autodiscover"
      record_type  = "A"
      record_value = local.public_ip
    },
  ]
}
