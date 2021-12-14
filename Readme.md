
## Requirements

Please follow steps mentioned [here](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started#adding-credentials) to setup `GOOGLE_APPLICATION_CREDENTIALS` for terraform execution.


## Best Practices
- Use Backend to store terraform state file following [here](https://www.terraform.io/docs/language/settings/backends/configuration.html)
OR
- Use [Terraform Cloud](https://www.terraform.io/cloud) for managed execution.
To use this, need to [set creadentials](https://www.terraform.io/docs/language/settings/backends/gcs.html#configuration-variables) as discussed here.


## Steps to Follow
Here are the steps to follow:

<img src="https://www.datocms-assets.com/2885/1566497750-tf-withoutsentinel.png?fit=max&q=80&w=1500" alt="Basic steps without sentinel" width="400px"/>

- `terraform init` - This will initialize the terraform and the modules at first.
- `terraform plan` - This will plan the execution steps
- `terraform apply` - This will apply the plan execution.
- `terraform destroy` - This won't be required much but for final destroy.

You can use Sentinel with Terraform cloud as here,

<img src="https://www.datocms-assets.com/2885/1566497760-tf-withsentinel.png?fit=max&q=80&w=1500" alt="with sentinel" width="400px"/>

#### [Getting Started with Sentinel in Terraform Cloud](https://www.hashicorp.com/blog/terraform-learn-getting-started-with-sentinel-in-terraform-cloud)

</br>

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |


## Modules

- [google_project_iam_member](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam#google_project_iam_member)


## Resources

| Name | Type |
|------|------|
| [google_project_iam_member.access](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Project ID in which the access will be provided | `String` | n/a | yes |
| <a name="input_yamlfile"></a> [yamlfile](#input\_yamlfile) | Path to yaml file having user access defined (Must be present) | `String` | "user\_access.yml" | no |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_expiry time"></a> [expiry\_time](#output\_expiry\_time) | n/a |
| <a name="output_user_roles"></a> [user\_roles](#output\_user\_roles) | n/a |
