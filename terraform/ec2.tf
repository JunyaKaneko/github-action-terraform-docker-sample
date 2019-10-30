provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-09c6723c6c24250c9"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
