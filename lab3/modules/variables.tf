variable "vpc_cidr" {
  type = string
}

variable "env" {
  type = string
}

variable "list_subnets_config" {
  type = list(object({
    name                    = string
    cidr_block              = string
    availability_zone       = string
    map_public_ip_on_launch = bool

  }))
}