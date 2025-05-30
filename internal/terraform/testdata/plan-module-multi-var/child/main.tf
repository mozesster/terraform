variable "things" {}

resource "aws_instance" "bar" {
  baz   = "baz"
  count = 2
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "foo" {
  foo = "${join(",", aws_instance.bar.*.baz)}"
  tags = {
    git_org = "mozesster"
  }
}
