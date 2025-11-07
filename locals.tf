locals {
  environments = {
    dev = {
      rg_name = "rg-myapp-dev"
      tags = {
        env     = "dev"
        owner   = "platform-team"
        repo    = "TBD"
        product = "alpha"


      }
    }
    test = {
      rg_name = "rg-myapp-test"
      tags = {
        env     = "test"
        owner   = "qa-team"
        repo    = "TBD"
        product = "alpha"

      }
    }
    prod = {
      rg_name = "rg-myapp-prod"
      tags = {
        env     = "prod"
        owner   = "operations"
        repo    = "TBD"
        product = "alpha"

      }
    }
  }

  env = local.environments[var.environment]
}
