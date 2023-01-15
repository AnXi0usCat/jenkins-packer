variable "aws_region" {
  type    = string
  description = "AWS region where we will create the infrastructure" 
}

variable "jenkins_allowed_ip" {
  type = string
  description = "IP Address which is allowed to access the Jenkins instance"
}
