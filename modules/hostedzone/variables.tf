
variable "hostedzone" {
  type        = string
  description = "Enter private Hosted Zone"
}
variable "primaryvpc" {
  description = "ID of the Primary VPC"
  type        = string
}


variable "secondaryvpc" {
  description = "ID of the Secondary VPC"
  type        = string
}

