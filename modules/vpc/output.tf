output "pid" {
  value = aws_vpc.primary.id
}

output "sid" {
  value = aws_vpc.secondary.id
}
