provider " aws" {
  profile = "default"
  region = "us-east-2"
}
resource "aws_instance" "myec2" {
  ami ="ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  subnet_id = "subnet-04bb8948"
  user_data = "${file("userdada.sh")}"
  tags = {
    name="ec2"
  }
