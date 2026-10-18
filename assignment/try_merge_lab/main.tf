locals {
  app_name = "payment"

  common_tags = {
    Application = local.app_name
    Environment = var.environment
    Name        = "${local.app_name}-${var.environment}"
    Owner       = "SRE-Team"
    CostCenter  = "CC1001"
  }

  environment_tags = {
    dev = {
      Owner      = "Development"
      CostCenter = "DEV100"
    }

    prod = {
      Owner      = "Production"
      CostCenter = "PROD900"
    }
  }

  selected_tags = try(
    local.environment_tags[var.environment],
    {
      Owner      = "SRE-Team"
      CostCenter = "DEFAULT"
    }
  )

  final_tags = merge(
    local.common_tags,
    local.selected_tags
  )
}

output "environment" {
  value = var.environment
}

output "selected_tags" {
  value = local.selected_tags
}

output "final_tags" {
  value = local.final_tags
}