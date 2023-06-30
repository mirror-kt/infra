terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  cloud {
    organization = "mirror_kt"

    workspaces {
      name = "infra"
    }
  }
}
