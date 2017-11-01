
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-8c1be5f6"
  instance_type = "t2.micro"
  key_name      = "kkb-Linux-keypair"
  tags {
    Name  = "kkb-terraform-test"
  }
}
