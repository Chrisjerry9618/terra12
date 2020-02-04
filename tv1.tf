provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/root/.aws/creds"
  profile                 = "default"
}
##test
resource "aws_instance" "ec2" {
  subnet_id = "subnet-fb4a03a7"
  key_name = "chrisaws"
  instance_type = "t2.micro"
  ami = "ami-07ebfd5b3428b6f4d"
  iam_instance_profile = "admin-access"
  associate_public_ip_address = "true"
  root_block_device{volume_size = 8}
  vpc_security_group_ids = ["sg-03d34d9db9c65fcf5"]
   tags = {
    Name = "Devops-Terraform-BE-dev"
  }
}

