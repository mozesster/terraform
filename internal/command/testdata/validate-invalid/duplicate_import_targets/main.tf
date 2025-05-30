resource "aws_instance" "web" {
  tags = {
    git_org = "mozesster"
  }
}

import {
  to = aws_instance.web
  id = "test"
}

import {
  to = aws_instance.web
  id = "test2"
}
