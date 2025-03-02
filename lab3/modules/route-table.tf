resource "aws_route_table" "pub_route" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "pub-route"
  }
}

resource "aws_route_table" "priv_route" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "priv-route"
  }
}

