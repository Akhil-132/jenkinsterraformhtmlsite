provider "aws" {
  region = "us-east-1"
  #   access_key = ""
  #   secret_key = ""	
}

resource "aws_instance" "intro" {
  count = "1"
  ami                    = "ami-053b0d53c279acc90"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "ngnix-key"
  vpc_security_group_ids = ["sg-0495549ba8e9f39b2"]
  subnet_id              = "subnet-0c8574a0443f538b1"
  tags = {
    Name    = "website"
    Project = "nginx install"
  }

  user_data = file("user_data.sh")
}
