locals {
  app_name    = "payment"
  environment = "dev"
  owner       = "sre-team"

  common_tags = {
    Environment = local.environment
    Application = local.app_name
    Owner       = local.owner
    Name        = "Devolpment"
    CostCenter  = "CC1001"
  }
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