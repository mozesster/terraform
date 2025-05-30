resource "aws_instance" "A" {
  foo = "bar"
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
  key    = "${aws_instance.A.id}"
}
