output "app_name" {
  value = var.app_name
}

output "file_name" {
  value = local_file.app.filename
}

output "file_id" {
  value = local_file.app.id
}