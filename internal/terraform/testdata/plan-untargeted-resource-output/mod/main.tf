locals {
  one = 1
}

resource "aws_instance" "a" {
  count = "${local.one}"
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "b" {
  count = "${local.one}"
  tags = {
    git_org = "mozesster"
  }
}

output "output" {
  value = "${join("", coalescelist(aws_instance.a.*.id, aws_instance.b.*.id))}"
}
