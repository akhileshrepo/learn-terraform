module "instances" {
  source                  = "./module"
  for_each                = var.components
  vpc_security_group_ids  = var.vpc_security_group_ids
  zone_id                 = var.zone_id
  name                    = lookup(each.value, "name", null)
  instance_type           = lookup(each.value, "instance_type", null)
}

