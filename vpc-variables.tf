# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "myvpc"
}

# VPC CIDR
variable "vpc_cidr_block" {
  description = "Vpc cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Database Subnet Group (Boolean)
variable "vpc_create_database_subnet_group" {
  description = " VPC Database Subnet Group"
  type        = bool
  default     = true
}

# Create VPC Database Subnet Route Table (Boolean)
variable "vpc_create_database_subnet_route_table" {
  description = "Create VPC Database Subnet Route Table"
  type        = bool
  default     = true
}

# VPC Enable NAT Gateway (Boolean)
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateway for Private Subnets for Otbound Communication"
  type        = bool
  default     = true
}

# Create VPC Single NAT Gateway (Boolean)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one AZ to save cost"
  type        = bool
  default     = true
}