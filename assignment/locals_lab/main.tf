locals {
  app_name      = "payment"
  environment   = var.environment
  owner         = "sre-team"
  resource_name = "${local.app_name}-${local.environment}"
  common_tags = {
    Environment = local.environment
    Application = local.app_name
    Owner       = local.owner
    Name        = local.resource_name
    CostCenter  = "CC1001"
  }
  settings = {
  environment = var.environment
  owner = "Owner1"
}

safe_owner = try(local.settings.owner, "Owner2")

}

output "app_name" {
  value = local.app_name
}

output "environment" {
  value = local.environment
}

output "common_tags" {
  value = local.common_tags

}

output "merged_tags" {

  value = merge(
    local.common_tags,
    { Name = "Production" }
  )
}

