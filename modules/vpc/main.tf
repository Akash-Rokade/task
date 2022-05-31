
resource "aws_vpc" "primary" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC1"
  }

}
resource "aws_vpc" "secondary" {
  cidr_block = "20.0.0.0/16"
  tags = {
    Name = "VPC2"
  }
}
