variable "kubernetes_version" {
    default = 1.33
    description = "kubernetes version"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "default CIDR block for VPC"
  
}

variable "aws_region" {
    default = "us-gov-west-1"
    description = "aws region"
  
}