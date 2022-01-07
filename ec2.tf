provider " aws" {
  region = "us-east-2"
}
resource "aws_instance" "myec2" {
  ami ="ami-0629230e074c580f2"
  instance_type = "t2.micro"
  subnet_id = "subnet-04ae13ffb84d8c3fc"
  user_data = "${file("userdada.sh")}"
  tags = {
    name="ec2"
  }
