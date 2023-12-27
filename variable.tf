variable "ec2_toolserver03_public_ip_2" {
  description = "This is a variable to manage ec2 dev_public_ip_1 name"
  type        = string
  default     = "aws_instance.Tool-Server.public_ip"
}
