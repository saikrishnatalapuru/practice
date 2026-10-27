/* using sepearte modules
module "payment" {
  source   = "./modules/app_file"
  app_name = "payment"
}

module "backend" {
  source   = "./modules/app_file"
  app_name = "backend"
}

module "frontend" {
  source   = "./modules/app_file"
  app_name = "frontend"
}*/

/* using for_each
module "app_file" {
  source   = "./modules/app_file"
  for_each = toset(["payment", "backend", "frontend"])
  app_name = each.key
}*/
module "app_file" {
  source   = "./modules/app_file"
  for_each = var.app_names
  app_name = each.key
}
moved {
  from = module.payment
  to   = module.app_file["payment"]
}

moved {
  from = module.backend
  to   = module.app_file["backend"]
}

moved {
  from = module.frontend
  to   = module.app_file["frontend"]
}

