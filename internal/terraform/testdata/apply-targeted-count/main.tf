resource "aws_instance" "foo" {
  count = 3
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  count = 3
  tags = {
    git_org = "mozesster"
  }
}
