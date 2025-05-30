resource "aws_instance" "parent" {
  count = 2
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
  things = "${join(",", aws_instance.parent.*.id)}"
}

