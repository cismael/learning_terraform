variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = "eu-west-3"
  #default     = "us-east-1"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "Enable DNS hostnames in VPC"
  default     = true
}

variable "vpc_cidr_block" {
  type        = string
  description = "Base CIDR Block for VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_subnets_cidr_blocks" {
  type        = list(string)
  description = "CIDR Blocks for Subnets in VPC"
  default     = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "vpc_subnet_count" {
  type = number
  description = "Number of subnet to create"
  default = 2
}

variable "map_public_ip_on_launch" {
  type        = bool
  description = "Map a public IP address for Subnet instances"
  default     = true
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Instance"
  default     = "t2.micro"
}

variable "instance_count" {
  type = number
  description = "Number of EC2 instance to create in VPC"
  default = 2
}

variable "company" {
  type        = string
  description = "Company name for resource tagging"
  default     = "Globomantics - ICO in the cloud"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}

##################################################################################
# LOCAL STACK
##################################################################################
variable "localstack_endpoint_url" {
  type        = string
  description = "URL address for localstack on local machine"
  default     = "http://localhost:4566"
}
