resource "aws_instance" "a" {
  foo = "bar"
  tags = {
    git_org = "mozesster"
  }
}

module "child" {
  source = "./child"
  in     = aws_instance.a.id
}

output "out" {
  value = aws_instance.a.id
}
