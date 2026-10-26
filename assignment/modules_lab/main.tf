module "app_file" {
  source   = "./modules/app_file"
  app_name = "payment-api"
}

module "backend" {
  source   = "./modules/app_file"
  app_name = "backend"
}