data "aws_ami" "ami" {
  owners = ["amazon"]
  most_recent = true

  filter{
    name = "name"
    values = ["amzn2-ami-hvm-2.0.20200722.0-x86*"]
  }
}

variable "ingressprod" {
  default = [{inport=80,inprot="tcp"},{inport=22,inprot="tcp"},{inport=443,inprot="tcp"},{inport=53,inprot="tcp"}]
}