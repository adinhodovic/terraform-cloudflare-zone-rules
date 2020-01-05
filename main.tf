data "cloudflare_zones" "default" {
  filter {
    name = format("%s*", var.cloudflare_zone)
  }
}

resource "cloudflare_zone_settings_override" "default" {
  zone_id = lookup(data.cloudflare_zones.default.zones[0], "id")
  settings {
    security_level           = "high"
    ssl                      = "strict"
    automatic_https_rewrites = "on"
    always_online            = "on"
    always_use_https         = "on"
    email_obfuscation        = "on"
  }
}
