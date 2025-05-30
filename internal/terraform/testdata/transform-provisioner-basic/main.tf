resource "aws_instance" "web" {
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}
