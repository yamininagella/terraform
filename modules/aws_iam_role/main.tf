data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = var.iam_role_identifiers
    }
  }
}

resource "aws_iam_role" "iam_role" {
  name               = var.iam_role_name
  path               = var.iam_role_path
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
}

# iam policy 
resource "aws_iam_policy" "iam_policy" {
  name        = var.iam_policy_name


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

# iam role policy attachment
resource "aws_iam_role_policy_attachment" "iam_role_policy_attachment" {
  role       = aws_iam_role.iam_role.name
  policy_arn = aws_iam_policy.iam_policy.arn
}