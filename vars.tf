variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "aws_region" {
  description = "aws region"
  type        = string
}

variable "aws_secret_key" {
  description = "aws secret key"
  type        = string
}

variable "aws_access_key" {
  description = "aws access key"
  type        = string
}

# Defining CIDR Block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
# Defining CIDR Block for Subnet
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
# Defining CIDR Block for 2d Subnet
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}
