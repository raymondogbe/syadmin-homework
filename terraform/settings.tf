terraform {
  /* backend "s3" {
    bucket = "1ot-platform-state-local"
    key    = "1ot-platform-state-local"
    region = "eu-west-3"
  } */
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}
