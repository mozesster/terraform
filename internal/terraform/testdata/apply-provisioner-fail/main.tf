resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}
