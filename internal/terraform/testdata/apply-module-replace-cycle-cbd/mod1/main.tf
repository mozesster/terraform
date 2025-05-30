resource "aws_instance" "a" {
  require_new = "new"
  lifecycle {
    create_before_destroy = true
  }
  tags = {
    git_org = "mozesster"
  }
}

output "ids" {
  value = [aws_instance.a.id]
}
