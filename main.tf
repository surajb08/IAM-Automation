
resource "google_project_iam_member" "access" {

    for_each = local.user_roles

    project = var.project_id
    role    = each.value.role
    member  = "user:${each.value.emailid}"

    # Condition created to expire the access in 15 days.
    # Remove/Comment following block to remove condition.
    condition {
        title       = "expires_after_${local.expiry_date_fmt}"
        description = "Expiring at midnight of ${local.expiry-date-fmt}"
        expression  = "request.time < timestamp(\"${local.expiry_time_fmt}\")"
    }
}
