resource "aws_instance" "foo" {
  num = "2"
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}
