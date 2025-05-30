resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.foo.foo}"
}
