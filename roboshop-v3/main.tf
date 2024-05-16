module "components" {

  for_each          = var.components
  source            = "./module"
  name              = each.value["name"]
  instance_type     = each.value["instance_type"]
  security_group    = var.security_group
  zone_id           = var.zone_id
}



