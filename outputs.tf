
output "user_roles" {
    value = local.user_roles
}

output "expiry_time" {
    value = "Access will be expire at ${local.expiry_time} UTC"
}