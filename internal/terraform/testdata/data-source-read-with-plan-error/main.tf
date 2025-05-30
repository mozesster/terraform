resource "aws_instance" "foo" {
  tags = {
    git_org = "mozesster"
  }
}

// this will be postponed until apply
data "aws_data_source" "foo" {
  foo = aws_instance.foo.id
}

// this will cause an error in the final plan
resource "test_instance" "bar" {
  foo = "error"
}
