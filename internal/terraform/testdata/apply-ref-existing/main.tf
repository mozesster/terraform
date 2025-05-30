resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"

  var = "${aws_instance.foo.foo}"
}
