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
variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)  
}

variable "private_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string) 
}

variable "cidr_block" {
  description = "List of public subnet CIDR blocks"
  type        = string
}

