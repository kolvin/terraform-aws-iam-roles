output "roles" {
  value = {
    role = aws_iam_role.this
  }
}

output "foo" {
  value = {
    foo = "bar"
  }
}