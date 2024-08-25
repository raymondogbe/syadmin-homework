variable "env" {
  type = string
}

variable "aws_region" {
  type = string
  default = "eu-west-3"
}

variable "team" {
  type = string
}

variable "product" {
  type = string
}

variable "tags" {
  type = map(string)
}
