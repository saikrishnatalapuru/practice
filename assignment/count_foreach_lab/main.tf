moved {
  from = local_file.app[1]
  to   = local_file.app["backend"]
}

moved {
  from = local_file.app[2]
  to   = local_file.app["database"]
}
moved {
  from = local_file.app["backend"]
  to   = local_file.app["api"]
}
locals {
  applications = toset(["database", "api"])
}

resource "local_file" "app" {
  for_each = local.applications

  filename = "${path.module}/${each.key}.txt"
  content  = "Application: ${each.key}"
}

output "app_filenames" {
  value = {
    for app, file in local_file.app :
    app => file.filename
  }
}