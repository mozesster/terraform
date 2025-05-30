resource "aws_instance" "foo" {
  count = 0
  foo   = "foo"
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  foo = "${aws_instance.foo.*.foo}"
  tags = {
    git_org = "mozesster"
  }
}
