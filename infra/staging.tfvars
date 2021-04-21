variable "resource_group_name" {
  type    = string
  default = "rg-example-staging"
}

variable "resource_group_location" {
  type    = string
  default = "West Europe"
}

variable "storage_container_name" {
  type    = string
  default = "barfoo"
}

variable "storage_blob_source" {
  type    = string
  default = "foo.zip"
}