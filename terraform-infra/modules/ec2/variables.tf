variable "project_name" {}
variable "environment" {}

variable "subnet_id" {}

variable "security_group_id" {}

variable "key_name" {}

variable "instance_type" {
  default = "t3.small"
}