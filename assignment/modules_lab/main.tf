module "app" {
  source   = "./modules/app_file"
  for_each = toset(["payment-api", "backend", "frontend"])

  app_name = each.key
}

moved {
  from = module.app_file
  to   = module.app["payment-api"]
}

moved {
  from = module.backend
  to   = module.app["backend"]
}