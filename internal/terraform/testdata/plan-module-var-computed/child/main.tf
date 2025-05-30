resource "aws_instance" "foo" {
  compute = "foo"
  tags = {
    git_org = "mozesster"
  }
}

output "num" {
  value = "${aws_instance.foo.foo}"
}
