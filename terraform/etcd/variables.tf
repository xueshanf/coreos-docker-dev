variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "security_groups" {}
variable "aws_ec2_keypair" {}

#variable "instance_aws_access_key" {}
#variable "instance_aws_secret_key" {}
#variable "etcd_discovery_url" {}
variable "environment" {
  default = "test"
}
variable "aws_instance_type" {
  default = "m3.medium"
}

variable "aws_region" {
  default = "us-west-2"
}

variable "aws_availability_zone" {
  default = "us-west-2a"
}

# The net block (CIDR) that SSH is available to.
variable "allow_ssh_from" {
  default = "0.0.0.0/0"
}

# get updates at https://s3.amazonaws.com/coreos.com/dist/aws/coreos-beta-hvm.template
variable "amis" {
  default = {
    us-east-1 = "ami-fe60d496"
    us-west-2 = "ami-6db7f55d"
  }
}

variable "subnet" {
    default = {
    us-west-2a = "subnet-153de770"
    us-west-2b = "subnet-102cd467"
    us-west-2c = "subnet-830d15c5"
    } 
}

variable "private_ip" {
    default = {
    us-west-2a = "10.42.2.50"
    us-west-2b = "10.42.2.100"
    us-west-2c = "10.42.2.150"
    }
}
#variable "aws_route53_zone_id_itlab" {}
