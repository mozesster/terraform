module "child" {
  source = "./child"
}

resource "aws_instance" "foo" {
  foo = "bar"
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
