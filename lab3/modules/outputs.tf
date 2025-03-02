output subnets {
    value = aws_subnet.subnets
}

output sg_ssh {
    value = aws_security_group.sg_ssh_open
}

output sg_cidr {
    value = aws_security_group.sg_vpc_cidr_only
}

output routes {
    value = aws_route_table.pub_route
}

output routes-priv {
    value = aws_route_table.priv_route
}