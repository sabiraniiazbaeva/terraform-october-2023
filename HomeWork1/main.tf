resource "aws_iam_user" "User1" {
  name = "Sabira"
}

resource "aws_iam_user" "User2" {
  name = "Kaizen"
}

resource "aws_iam_user" "User3" {
  name = "Hello"
}

resource "aws_iam_user" "User4" {
  name = "World"
}

resource "aws_iam_group" "Group1" {
  name = "DevOps"
}

resource "aws_iam_group" "Group2" {
  name = "QA"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.User1.name,
    aws_iam_user.User2.name,
  ]

  group = aws_iam_group.Group1.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.User3.name,
    aws_iam_user.User4.name,
  ]

  group = aws_iam_group.Group2.name
}

resource "aws_iam_user" "import" {
  name = "admin"
}

output "name1" {
  value = aws_iam_user.User1
}

output "name2" {
  value = aws_iam_user.User2.unique_id
}