output "team_notification_rules_lookup_id" {
  description = "Map of id values across all team_notification_rules_lookup, keyed the same as var.team_notification_rules_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_team_notification_rules.team_notification_rules_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_notification_rules_lookup_notification_rules" {
  description = "Map of notification_rules values across all team_notification_rules_lookup, keyed the same as var.team_notification_rules_lookup except keys with no notification_rules are omitted"
  value       = { for k, v in data.datadog_team_notification_rules.team_notification_rules_lookup : k => v.notification_rules if v.notification_rules != null && length(v.notification_rules) > 0 }
}
output "team_notification_rules_lookup_team_id" {
  description = "Map of team_id values across all team_notification_rules_lookup, keyed the same as var.team_notification_rules_lookup except keys with no team_id are omitted"
  value       = { for k, v in data.datadog_team_notification_rules.team_notification_rules_lookup : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

