module "hodovi_cc_default_zone_rules" {
  source = "github.com/adinhodovic/terraform-cloudflare-zone-rules"

  zone_id = "my-zone-id"
}
