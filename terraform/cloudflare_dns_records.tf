resource "cloudflare_record" "pleroma" {
  name    = "pleroma"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "34.134.233.145"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "root" {
  name    = "mirror-kt.dev"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "mirror-kt.pages.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "dub_sh" {
  name    = "s"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "cname.dub.sh"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "mail" {
  name     = "mirror-kt.dev"
  priority = 0
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "www2800.sakura.ne.jp"
  zone_id  = local.cloudflare_zone_id
}

resource "cloudflare_record" "spf" {
  name    = "mirror-kt.dev"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=spf1 include:www2800.sakura.ne.jp ~all"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "mc_chun_1" {
  name    = "mc.chun"
  proxied = false
  ttl     = 1
  type    = "NS"
  value   = "columbus.aternos.org"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "mc_chun_2" {
  name    = "mc.chun"
  proxied = false
  ttl     = 1
  type    = "NS"
  value   = "galileo.aternos.org"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "dmarc" {
  name    = "_dmarc"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "v=DMARC1; p=quarantine; rua=mailto:dmarc@mirror-kt.dev"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "github_pages_challenge" {
  name    = "_github-pages-challenge-mirror-kt"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "5ccd0ccb2e561700cb4bc02bfb98f1"
  zone_id = local.cloudflare_zone_id
}

resource "cloudflare_record" "keybase" {
  name    = "_keybase"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=BUwOwC7eaSNWlnpB9toKGrkWPbK8Mnx5C4p1_PxLENE"
  zone_id = local.cloudflare_zone_id
}
