provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.15.1"
    }
  }
  required_version = ">= 1.1.9"
}

resource aws_vpc vpc {
  cidr_block           = "10.1.0.0/16"
  enable_dns_hostnames = "true"
  enable_dns_support   = "true"
  instance_tenancy     = "default"

  assign_generated_ipv6_cidr_block = "true"

  tags = merge(
    tomap({
      "Name" = "testing-jenkins"
    }),
    var.tags
  )
}

