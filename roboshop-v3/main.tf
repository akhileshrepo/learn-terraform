module "components" {
  for_each          = var.components
  source            = "./module"
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
  vpc_security_group_ids = var.vpc_security_group_ids
  zone_id          = var.zone_id
}


