resource "cloudflare_zone_settings_override" "default" {
  zone_id = var.zone_id
  settings {
    security_level           = "high"
    ssl                      = "strict"
    automatic_https_rewrites = "on"
    always_online            = "on"
    always_use_https         = "on"
    email_obfuscation        = "on"
  }
}
