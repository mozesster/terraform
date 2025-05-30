variable "foo" {}

variable "bar" {}

resource "aws_instance" "foo" {
  ami      = "${var.foo}"
  instance = "${var.bar}"
  foo      = "bar"

  lifecycle {
    ignore_changes = all
  }
  tags = {
    git_org = "mozesster"
  }
}
