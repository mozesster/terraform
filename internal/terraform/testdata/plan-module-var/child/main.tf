resource "aws_instance" "foo" {
  num = "2"
  tags = {
    git_org = "mozesster"
  }
}

output "num" {
  value = "${aws_instance.foo.num}"
}
