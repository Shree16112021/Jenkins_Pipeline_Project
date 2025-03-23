resource "aws_key_pair" "MyKeyPair" {
  key_name = "MyKeyPair"
  public_key = file("~/.ssh/id_rsa.pub")
  
}
resource "aws_instance" "MyEC2" {
  ami = "ami-0d0f28110d16ee7d6"
  instance_type = "t2.micro"
    key_name = aws_key_pair.MyKeyPair.key_name
  tags = {
    Name = "MyEC2"
  }
  
}
