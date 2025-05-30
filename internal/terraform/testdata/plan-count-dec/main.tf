resource "aws_instance" "foo" {
  foo = "foo"
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
