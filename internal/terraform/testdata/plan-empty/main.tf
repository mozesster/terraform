resource "aws_instance" "foo" {
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "bar" {
  tags = {
    git_org = "mozesster"
  }
}
