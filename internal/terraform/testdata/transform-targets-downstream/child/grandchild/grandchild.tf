resource "aws_instance" "foo" {
  tags = {
    git_org = "mozesster"
  }
}

output "id" {
  value = "${aws_instance.foo.id}"
}
