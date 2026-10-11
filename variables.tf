variable "team_notification_rules_lookup" {
  description = <<EOT
Map of team_notification_rules_lookup, attributes below
Required:
    - team_id
EOT

  type = map(object({
    team_id = string
  }))
}

