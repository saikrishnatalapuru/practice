resource "local_file" "app" {
  filename             = "${path.module}/${var.app_name}.txt"
  content              = "Application: ${var.app_name}"
  file_permission      = "0644"
  directory_permission = "0755"
}