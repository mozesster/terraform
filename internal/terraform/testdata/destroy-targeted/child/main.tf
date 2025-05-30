variable "in" {
}

resource "aws_instance" "b" {
  foo = var.in
  tags = {
    git_org = "mozesster"
  }
}

output "out" {
  value = var.in
}
