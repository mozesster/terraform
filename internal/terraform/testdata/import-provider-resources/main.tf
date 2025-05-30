provider "aws" {
  value = "${test_instance.bar.id}"
}

resource "aws_instance" "foo" {
  bar = "value"
  tags = {
    git_org = "mozesster"
  }
}

resource "test_instance" "bar" {
  value = "yes"
}
