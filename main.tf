
provider "aws" {
  region = var.main_region
}

variable "hostedzone" {
  type        = string
  description = "enter hosted zone1 "
}

module "vpc" {
  source = "./modules/vpc"
}


module "hostedzone" {
  source       = "./modules/hostedzone"
  hostedzone   = var.hostedzone
  primaryvpc   = module.vpc.pid
  secondaryvpc = module.vpc.sid
}
