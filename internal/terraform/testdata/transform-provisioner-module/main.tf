resource "aws_instance" "foo" {
  provisioner "shell" {}
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
}
