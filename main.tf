data "datadog_team_notification_rules" "team_notification_rules_lookup" {
  for_each = var.team_notification_rules_lookup

  team_id = each.value.team_id
}

