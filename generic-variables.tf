variable "aws_region" {
  type    = string
  default = "us-east-1"
}

#  Environmment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division
variable "business_division" {
  type    = string
  default = "HR"

}