resource "aws_route53_zone" "hostedzone" {

  name = var.hostedzone
  vpc {
    vpc_id = var.primaryvpc
  }

  vpc {
    vpc_id = var.secondaryvpc
  }

  provisioner "local-exec" {
    command = "terraform destroy -auto-approve -lock=false"
  }

}
