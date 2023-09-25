variable "vpc_id" {
    type = string
    default = "../aws_vpc"
}
variable "subnet_cidr_block" {
    type = string
    #default = "10.0.0.0/25"
}
variable "tags" {
    type = map(string)
    default = {
      Name = "Sample",
      Env ="Dev"
    }
}