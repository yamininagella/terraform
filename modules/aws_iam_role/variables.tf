variable "iam_role_identifiers" {
  type = list(string)
  default = [ "ec2.amazonaws.com" ]
}

variable "iam_role_name" {
    type = string
    default = "instance_role"
}

variable "iam_role_path" {
    type = string
    default = "/system/"
  
}

variable "iam_policy_name" {
    type = string
    default = "instance-policy"
}