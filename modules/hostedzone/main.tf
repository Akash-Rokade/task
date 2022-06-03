resource "aws_route53_zone" "hostedzone" {

  name = var.hostedzone
  vpc {
    vpc_id = var.primaryvpc
  }

vpc {
vpc_id = var.secondaryvpc
}
}

resource "null_resource" "this" {
 provisioner "local-exec" {
command =<<-EOT
aws route53 disassociate-vpc-from-hosted-zone --hosted-zone-id=${aws_route53_zone.hostedzone.zone_id} --vpc VPCRegion=us-east-1,VPCId=${var.primaryvpc}
aws ec2 delete-vpc --vpc-id ${var.primaryvpc}
EOT
}
depends_on = [aws_route53_zone.hostedzone]
}