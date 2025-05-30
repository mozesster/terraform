variable "vpc_id" {}

resource "aws_instance" "child" {
  vpc_id = var.vpc_id
  tags = {
    git_org = "mozesster"
  }
}

output "modout" {
  value = aws_instance.child.id
}
