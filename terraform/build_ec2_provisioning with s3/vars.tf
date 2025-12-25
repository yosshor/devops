variable "region" {
  default = "us-east-1"
}

variable "zone1" {
  default = "us-east-1a"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "amiID" {
  type = map(any)
  default = {
    "us-east-1"    = "ami-0030e4319cbf4dbf2"
    "us-east-2"    = "ami-0947d2ba12ee1ff75"
    "us-west-1"    = "ami-06645b9067cdce3f0"
    "us-west-2"    = "ami-0030e4319cbf4dbf2"
    "eu-central-1" = "ami-0030e4319cbf4dbf2"
    "eu-west-1"    = "ami-0030e4319cbf4dbf2"
    "eu-west-2"    = "ami-0030e4319cbf4dbf2"
    "eu-west-3"    = "ami-0030e4319cbf4dbf2"
    "eu-north-1"   = "ami-0030e4319cbf4dbf2"
  }
}


variable "ip4_address" {
  type    = list(string)
  default = ["212.122.322.154/32", "172.20.60.17/32"]
}


variable "web_user" {
  default = "ubuntu"
}