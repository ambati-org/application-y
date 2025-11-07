locals {
  environments = {
    dev = {
      rg_name = "rg-myapp-dev"
      tags = {
        env   = "dev"
        owner = "platform-team"
        repo  = "TBD"

      }
    }
    test = {
      rg_name = "rg-myapp-test"
      tags = {
        env   = "test"
        owner = "qa-team"
        repo  = "TBD"

      }
    }
    prod = {
      rg_name = "rg-myapp-prod"
      tags = {
        env   = "prod"
        owner = "operations"
        repo  = "TBD"
      }
    }
  }

  env = local.environments[var.environment]
}
