variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "tags" {
    type = map(string)
    default = {
      Name = "Sample",
      Env ="Dev"
    }
}