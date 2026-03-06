variable "project name" {
  description = "project name of the webserver"
  type        = string
}

variable "ami" {
  description = "ami used for the webserver"
  type        = any
}

variable "instance type" {
  description = "instance type of the webserver"
  type        = string
}

variable "key name" {
  description = "ssh key name for the webserver"
  type        = string
}

variable "vpc security group ids" {
  description = "vpc security group used by the webserver"
  type        = string
}

variable "subnet id" {
  description = "subnet of the webserver"
  type        = string
}