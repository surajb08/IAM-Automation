locals {

    data = yamldecode(file(var.yamlfile))

    user_roles = toset(flatten([
        for emailid, roles in local.data:
        [
            [for role in flatten(roles): join("=>", [emailid, role]) ]
        ]
    ]))

    expiry_time = timeadd(timestamp(), "${15*24}h")

    expiry_time_fmt = formatdate("YYYY-MM-DD'T'00:00:00Z", local.expiry_time )

    expiry_date_fmt = formatdate("YYYY_MM_DD", local.expiry_time )
    
    expiry-date-fmt = formatdate("YYYY-MM-DD", local.expiry_time )
}
