output "all_app_names" {
  value = {
    for app_key, app_module in module.app :
    app_key => app_module.app_name
  }
}

output "all_app_files" {
  value = {
    for app_key, app_module in module.app :
    app_key => app_module.file_name
  }
}

output "payment_api_name" {
  value = module.app["payment-api"].app_name
}

output "payment_api_file" {
  value = module.app["payment-api"].file_name
}

output "backend_name" {
  value = module.app["backend"].app_name
}

output "backend_file" {
  value = module.app["backend"].file_name
}