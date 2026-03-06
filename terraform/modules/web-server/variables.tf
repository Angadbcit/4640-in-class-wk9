variable "project_name" {
  description = "project name of the webserver"
  type        = string
}

variable "ami" {
  description = "ami used for the webserver"
  type        = string
}

variable "instance_type" {
  description = "instance type of the webserver"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "ssh key name for the webserver"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "vpc security group used by the webserver"
  type        = string
}

variable "subnet_id" {
  description = "subnet of the webserver"
  type        = string
}