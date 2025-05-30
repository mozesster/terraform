# Empty
provider "aws" {}

resource "aws_instance" "foo" {
  id = "bar"
  tags = {
    git_org = "mozesster"
  }
}

module "nested" {
  source = "./submodule"
}
