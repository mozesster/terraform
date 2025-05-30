terraform {
  required_providers {
    boop = {
      source = "foobar/beep" # intentional mismatch between local name and type
    }
  }
}

resource "aws_instance" "no_count" {
  tags = {
    git_org = "mozesster"
  }
}

resource "aws_instance" "count" {
  count = 1
  tags = {
    git_org = "mozesster"
  }
}

resource "boop_instance" "yep" {
}

resource "boop_whatever" "nope" {
}

data "beep" "boop" {
}

ephemeral "beep" "boop" {
  provider = boop
}

check "foo" {
  data "boop_data" "boop_nested" {}

  assert {
    condition     = data.boop_data.boop_nested.id == null
    error_message = "check failed"
  }
}
