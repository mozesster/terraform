resource "aws_instance" "shared" {
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
  value  = "${aws_instance.shared.id}"
}
