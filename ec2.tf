resource "aws_instance" "Instance1" {
  # ami = "${data.aws_ami.my_ami.id}"
  ami                         = "ami-020cba7c55df1f615"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "useast-kp"
  subnet_id                   = aws_subnet.subnet1-public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-1"
    Env        = "Prod"
    Owner      = "Hari"
    CostCenter = "ABCD"
  }
}

#   user_data = <<-EOF
#   !/bin/bash
#   sudo apt update -y
#   sudo apt install unzip curl -y

#   # Download and install AWS CLI v2
#   curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
# unzip awscliv2.zip
# sudo ./aws/install

#   Verify AWS CLI
#   aws --version
#   EOF


 