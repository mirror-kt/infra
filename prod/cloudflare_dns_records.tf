resource "cloudflare_dns_record" "root" {
  name    = "mirror-kt.dev"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  content = "mirror-kt.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "dub_sh" {
  name    = "s"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  content = "cname.dub.sh"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "mail" {
  name     = "mirror-kt.dev"
  priority = 1
  proxied  = false
  ttl      = 1
  type     = "MX"
  content  = "smtp.google.com"
  zone_id  = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "spf" {
  name    = "mirror-kt.dev"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "v=spf1 include:_spf.google.com ~all"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "dmarc" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "v=DMARC1; p=quarantine; rua=mailto:me@mirror-kt.dev; ruf=mailto:me@mirror-kt.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "github_pages_challenge" {
  name    = "_github-pages-challenge-mirror-kt"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "5ccd0ccb2e561700cb4bc02bfb98f1"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "keybase" {
  name    = "_keybase"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "keybase-site-verification=BUwOwC7eaSNWlnpB9toKGrkWPbK8Mnx5C4p1_PxLENE"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "bsky_record" {
  name    = "_atproto"
  proxied = false
  ttl     = 1
  type    = "TXT"
  content = "did=did:plc:r74f3l5bzuodnjekrf364t2v"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "google_workspace" {
  name    = "mirror-kt.dev"
  ttl     = 1
  type    = "TXT"
  content = "google-site-verification=HOfSNNDUwvlVJsp2TP7dwJCBub6fX7-Kpw1VGXZ2Ogg"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_dns_record" "maven_central" {
  name    = "mirror-kt.dev"
  ttl     = 1
  type    = "TXT"
  content = "kpzuvwto4j"
  zone_id = local.cloudflare_zone_id
}
