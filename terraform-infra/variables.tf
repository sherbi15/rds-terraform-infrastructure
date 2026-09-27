variable "aws_region" {
  default = "ap-south-1"
}

variable "project_name" {
  default = "heavenly-bakes"
}

variable "environment" {
  default = "dev"
}

variable "key_name" {
  default = "jenkins-key"
}

variable "public_key_path" {
  default = "C:/Users/bhara/.ssh/id_ed25519.pub"
}


variable "db_username" {
  type      = string
  sensitive = true
}

variable "db_password" {
  type      = string
  sensitive = true
}