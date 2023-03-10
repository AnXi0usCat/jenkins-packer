data aws_ami "ubuntu-jenkins" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "jenkins-instance" {
  ami           = data.aws_ami.ubuntu-jenkins.id
  instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.jenkins-security-group.id]

  # the public SSH key
  key_name = aws_key_pair.jenkins-keys.key_name

  # user data
  user_data = data.cloudinit_config.cloudinit-jenkins.rendered
}
