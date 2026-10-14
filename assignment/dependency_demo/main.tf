
data "local_file" "existing_config" {
  filename = "${path.module}/existing-config.txt"
}

output "existing_config_content" {
  value = data.local_file.existing_config.content
}