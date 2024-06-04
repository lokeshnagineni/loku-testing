variable "aws_access_key" {
    default = "AKIAZI2LH7QOSEYG3WFG"
}
variable "aws_secret_key" {
    default = "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"
}
variable "aws_region" {
    default = "us-east-2"
}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "environment" { default = "dev" }
variable "tags" {
    default = { name = testing }
}
