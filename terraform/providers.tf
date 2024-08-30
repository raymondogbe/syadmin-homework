provider "aws" {
  region     = var.aws_region
  access_key = "myrootaccesskeyid"
  secret_key = "myrootsecretaccesskey"
  # s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    apigateway     = "http://localstack:4566"
    cloudformation = "http://localstack:4566"
    cloudwatch     = "http://localstack:4566"
    dynamodb       = "http://localstack:4566"
    es             = "http://localstack:4566"
    firehose       = "http://localstack:4566"
    iam            = "http://localstack:4566"
    kinesis        = "http://localstack:4566"
    lambda         = "http://localstack:4566"
    route53        = "http://localstack:4566"
    redshift       = "http://localstack:4566"
    s3             = "http://localstack.4566"
    secretsmanager = "http://localstack:4566"
    ses            = "http://localstack:4566"
    sns            = "http://localstack:4566"
    sqs            = "http://localstack:4566"
    ssm            = "http://localstack:4566"
    stepfunctions  = "http://localstack:4566"
    sts            = "http://localstack:4566"
    ec2            = "http://localstack:4566"
  }

  default_tags {
    tags = merge(var.tags, {
      Environment = var.env
    })
  }
}

resource "aws_vpc" "localstack_vpc" {
  cidr_block = "10.90.8.0/21"
  tags = {
    Name = "localstack_vpc"
  }
}


resource "aws_subnet" "private" {
  count      = length(var.private_subnets)
  vpc_id     = aws_vpc.localstack_vpc.id
  cidr_block = var.private_subnets[count.index]

}
/* resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.localstack_vpc.id
  cidr_block = local.private_subnets[1] #"10.90.8.0/27"
} */
