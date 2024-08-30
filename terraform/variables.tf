variable "env" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "eu-west-3"
}

variable "team" {
  type = string
}

variable "product" {
  type = string
}

variable "s3_bucket_new" {
  type    = string
  default = "1ot-platform-state-local"
}

variable "tags" {
  type = map(string)
}
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}

variable "cidr_block" {
  type = string
}

