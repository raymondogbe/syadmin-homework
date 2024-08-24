variable "env" {
  type = string
}

variable "aws_region" {
  type = string
  default = "us-west-1"
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
