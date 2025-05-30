provider "aws" {
  foo = "bar"
}

resource "aws_instance" "foo" {
  tags = {
    git_org = "mozesster"
  }
}
