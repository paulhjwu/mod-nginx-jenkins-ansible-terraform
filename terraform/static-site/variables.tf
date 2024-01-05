variable "region" {
  description = "default free tier region"
  default     = "us-east-1"
}

variable "profile" {
  description = "default aws AMI profile cred"
}

variable "name" {
  description = "name of the instance"

}

variable "group" {
  description = "name of the ansible dynamic inventory group."

}

variable "SSHLocation" {
  default = "0.0.0.0/0"
  type    = string
  validation {
    condition     = can(cidrnetmask(var.SSHLocation))
    error_message = "Must be a valid IPv4 CIDR block address."
  }
}

