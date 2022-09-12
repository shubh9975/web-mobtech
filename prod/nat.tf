resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element (aws_subnet.public_subnet.*.id, 0)

  tags = { 
    Name  = "nat"
    Environment = "${var.environment}"
    }
  }

