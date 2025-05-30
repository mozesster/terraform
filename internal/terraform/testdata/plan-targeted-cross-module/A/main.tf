resource "aws_instance" "foo" {
  foo = "bar"
  tags = {
    git_org = "mozesster"
  }
}

output "value" {
  value = "${aws_instance.foo.id}"
}
