resource "aws_instance" "foo" {
  num = 2
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
