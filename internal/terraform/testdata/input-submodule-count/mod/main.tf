variable "instance_count" {
}

resource "aws_instance" "foo" {
  count = "${var.instance_count}"
  tags = {
    git_org = "mozesster"
  }
}

module "submod" {
  source = "./submod"
  list   = ["${aws_instance.foo.*.id}"]
}
