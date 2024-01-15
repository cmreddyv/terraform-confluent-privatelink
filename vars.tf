variable "private_link_display_name" {
    type = string
}

variable "private_link_access_display_name" {
    type = string
}

variable "cloud" {
    type = string
}

variable "region" {
    type = string
}

variable "subnets_to_privatelink" {
    type = list(string)
}

variable "aws_account_id" {
  type = string
}
variable "environment_id" {
    type = string
}
