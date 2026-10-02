module "this" {
    source = "../.."

    name        = "security-audit-baseline"
    environment = "dev"

organization_trail = false

    tags = {
      Owner      = "platform-team"
      CostCenter = "portfolio"
    }
  }
