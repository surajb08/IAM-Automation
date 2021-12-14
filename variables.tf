variable "project_id" {
  description = "Project ID in which the access will be provided"
  type = string
  default = null
}

variable "yamlfile" {
  type = string
  description = "Path to yaml file having user access defined"
  default = "user_access.yml"
}