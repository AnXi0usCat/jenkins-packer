resource aws_security_group "jenkins-security-group" {
  vpc_id      = aws_vpc.main.id
  name       = "jenkins"
  description = "Security group that allows ssh and tcp traffic ingress to jenkins instance"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [format("%s/%s", var.jenkins_allowed_ip, 32)]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [format("%s/%s", var.jenkins_allowed_ip, 32)]
  }

  tags = {
    Name = "jenkins-security-group"
  }
}
