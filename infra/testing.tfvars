variable "resource_group_name" {
  type    = string
  default = "rg-example-testing"
}

variable "resource_group_location" {
  type    = string
  default = "West Europe"
}

variable "storage_container_name" {
  type    = string
  default = "foobar"
}

variable "storage_blob_source" {
  type    = string
  default = "foo.zip"
}