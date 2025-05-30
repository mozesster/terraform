resource "aws_instance" "test" {
  value = "${uuid()}"
  tags = {
    git_org = "mozesster"
  }
}
