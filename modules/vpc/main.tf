data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, var.az_count)
  public_subnets=[for i in range(var.var.az_count):cidrsubnet(var.cidr,8,i)]
  private_subnets=[for i in range(var.var.az_count):cidrsubnet(var.cidr,8,i+10)]
}