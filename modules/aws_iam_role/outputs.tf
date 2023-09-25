output "policy_json" {
    value = data.aws_iam_policy_document.instance_assume_role_policy.json
  
}

output "iam_role_name" {
    value = aws_iam_role.iam_role.name
}

output "iam_role_arn" {
    value = aws_iam_role.iam_role.arn
}