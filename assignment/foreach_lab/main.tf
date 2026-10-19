locals {
  applications = toset([

    "backend",
    "database",
    "log-collection"
  ])
}

resource "local_file" "app" {
  for_each = local.applications

  filename = "${path.module}/${each.key}.txt"
  content  = "Application: ${each.key}"
}
moved {
  from = local_file.app["logging"]
  to   = local_file.app["log-collection"]
}

output "app_filenames" {
  value = {
    for name, file in local_file.app :
    name => file.filename
  }
}