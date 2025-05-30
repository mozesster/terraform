
resource "aws_instance" "foo" {
  test_string = "Hello, world!"
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "baz" {
  test_string = aws_instance.foo.test_string
  tags = {
    git_org = "mozesster"
  }
}

check "my_check" {
  data "aws_data_source" "bar" {
    id = "UI098L"
  }

  assert {
    condition     = data.aws_data_source.bar.foo == "valid value"
    error_message = "invalid value"
  }

}
