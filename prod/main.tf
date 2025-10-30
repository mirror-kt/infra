terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.0"
    }
  }
}

locals {
  cloudflare_account_id = "df660a88099049271711b4da72e58d2d"
  cloudflare_zone_id    = "2f66eedd7ec5f96d1a218efade1f9a33"
}

#region cloudflare provider

variable "cloudflare_api_token" {
  description = "API key used for Cloudflare API authentication"
  type        = string
  sensitive   = true
}

provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

#endregion
