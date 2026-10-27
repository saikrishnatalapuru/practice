/* Outputs using sepeare block
output "payment_filename" {
  value = module.payment.filename
}

output "backend_filename" {
  value = module.backend.filename
}

output "frontend_filename" {
  value = module.frontend.filename
}*/

output "app_filenames" {
  description = "Filenames created by each application module"

  value = {
    for name, app in module.app_file :
    name => app.filename
  }
}
