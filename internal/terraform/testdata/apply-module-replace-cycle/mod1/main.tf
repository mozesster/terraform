resource "aws_instance" "a" {
  require_new = "new"
  tags = {
    git_org = "mozesster"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
