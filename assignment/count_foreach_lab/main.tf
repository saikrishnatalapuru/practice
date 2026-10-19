locals {
  applications = ["backend", "database"]
}

resource "local_file" "app" {
  count    = length(local.applications)
  filename = "${path.module}/${local.applications[count.index]}.txt"
  content  = "Application: ${local.applications[count.index]}"
}

output "app_filenames" {
  value = local_file.app[*].filename
}