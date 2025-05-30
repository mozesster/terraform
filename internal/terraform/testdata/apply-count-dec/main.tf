resource "aws_instance" "foo" {
  foo   = "foo"
  count = 2
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  foo = "bar"
  tags = {
    git_org = "mozesster"
  }
}
