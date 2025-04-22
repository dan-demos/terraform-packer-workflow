provider "aws" {
  region = var.region
}

resource "aws_instance" "app_server" {
  ami           = "ami-02379174b2307d56b"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu-packer-vm"
  }
}
