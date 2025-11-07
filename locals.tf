locals {
  environments = {
    dev = {
      rg_name = "rg-myapp-dev"
      tags = {
        env   = "dev"
        owner = "platform-team"
      }
    }
    test = {
      rg_name = "rg-myapp-test"
      tags = {
        env   = "test"
        owner = "qa-team"
      }
    }
    prod = {
      rg_name = "rg-myapp-prod"
      tags = {
        env   = "prod"
        owner = "operations"
      }
    }
  }

  env = local.environments[var.environment]
}
