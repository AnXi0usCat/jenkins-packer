variable "aws_region" {
  type    = string
  description = "AWS region where we will create the infrastructure" 
}

variable "jenkins_allowed_ip" {
  type = string
  description = "IP Address which is allowed to access the Jenkins instance"
}

variable "private_key_path" {
  default = "mykey"
}

variable "public_key_path" {
  default = "mykey.pub"
}

variable "dummy_ssh_pub_key" {
  description = "public ssh key to put in place if there's no public key defined - to avoid errors in jenkins if it doesn't have a public key"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCySrVgnlDjgO1O0xNj7KLQ8aFh6y3DMEoqpSgvk8pMaG4hqJmYOGLcYr9SNbRThqnalweFfzDQIbNGK6PQcEWKYfxUwogjsn65OOUHdD91MtqiNg5MW3bFk2wlpXs5T83ASqnafmcSbsU3AWFoTpS+4xFYbRUTQVwos85nkuxpVohIwfkGqyZXyPjVZku1OvXLTxI+AjPqPpFTlzTtGT7swklNTd76QSiQU7o4206/93JZKivedqrZAhgstG5jm8EwDeSbJzkm9W22hKT5Or7viyFasQruqYZ12FlzURVw5IvyqmNxr2ncEgSXFCcIFYOaxuQNbW0SeSg++dn0Cezl root@ubuntu-xenial"
}
