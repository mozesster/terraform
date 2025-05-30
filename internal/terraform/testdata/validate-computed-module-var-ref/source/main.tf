resource "aws_instance" "source" {
  attr = "foo"
  tags = {
    git_org = "mozesster"
  }
}

output "sourceout" {
  value = "${aws_instance.source.attr}"
}
