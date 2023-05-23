variable "ami" {
  type = string
}

variable "access" {
  type = string
}

variable "secret" {
  type = string
}

variable "region" {
  type = string
}

variable "ports" {
  type = list(number)
}

variable "ins_type" {
  type = string
}