##################################################################################
# TERRAFORM CONFIG
##################################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.1"
    }
  }

  required_version = ">= 1.1.0"
}

##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  region  = var.aws_region
  profile = "default"
  #skip_credentials_validation = true
  #skip_metadata_api_check     = true
  #skip_requesting_account_id  = true

  /*
  endpoints {
    apigateway     = var.localstack_endpoint_url
    cloudformation = var.localstack_endpoint_url
    cloudwatch     = var.localstack_endpoint_url
    dynamodb       = var.localstack_endpoint_url
    ec2            = var.localstack_endpoint_url
    es             = var.localstack_endpoint_url
    firehose       = var.localstack_endpoint_url
    iam            = var.localstack_endpoint_url
    kinesis        = var.localstack_endpoint_url
    lambda         = var.localstack_endpoint_url
    route53        = var.localstack_endpoint_url
    redshift       = var.localstack_endpoint_url
    s3             = var.localstack_endpoint_url
    secretsmanager = var.localstack_endpoint_url
    ses            = var.localstack_endpoint_url
    sns            = var.localstack_endpoint_url
    sqs            = var.localstack_endpoint_url
    ssm            = var.localstack_endpoint_url
    stepfunctions  = var.localstack_endpoint_url
    sts            = var.localstack_endpoint_url
  }*/
}

provider "random" {
  # Configuration options
}
