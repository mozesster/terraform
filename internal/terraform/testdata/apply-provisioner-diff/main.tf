resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}
