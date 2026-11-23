variable "name" {
  description = "Name prefix for all network resources"
  type        = string
}

variable "cidr" {
  description = "IP address range of the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of availability zones to use"
  type        = number
  default     = 2
}

variable "single_nat_gateway" {
  description = "true = one shared NAT (cheap), false = one NAT per zone (resilient)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Extra tags added to all resources"
  type        = map(string)
  default     = {}
}