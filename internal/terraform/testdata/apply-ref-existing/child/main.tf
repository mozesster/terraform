variable "var" {}

resource "aws_instance" "foo" {
  value = "${var.var}"
  tags = {
    git_org = "mozesster"
  }
}
