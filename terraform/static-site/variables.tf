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
