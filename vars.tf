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
