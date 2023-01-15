resource "aws_key_pair" "jenkins-keys" {
  key_name   = "jenkins-keys"
  public_key = fileexists(var.public_key_path) ? file(var.public_key_path) : var.dummy_ssh_pub_key
  
  lifecycle {
    ignore_changes = [public_key]
  }
}

