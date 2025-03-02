
resource "aws_route_table_association" "public-association" {
  subnet_id      =  module.network.subnets["public-subnet-1"].id
  route_table_id = module.network.routes.id
}


resource "aws_route_table_association" "priv-association" {
  subnet_id      =  module.network.subnets["private-subnet-1"].id
  route_table_id = module.network.routes-priv.id
}
