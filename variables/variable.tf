variable "username" {
  type    = string
  default = "Athreya"
}

variable "age" {
  type    = number
  default = 22
}

variable "friends" {
  type = list(string)
}

variable "friends_age" {
  type = map(string)
  default = {
    akshay  = 23,
    aaditya = 24,
    dheeraj = 30
  }
}

# passing the value from the CLI

# terraform plan -var "username=Harshith"
#  terraform plan -var "age=23" -var "username=harshith"
# terraform plan -var 'friends= ["akshay", "aaditya", "dheeraj"]'

# Taking value from the shell
#   export TF_VAR_username=mithun
/*
 Error: Invalid value for input variable
│ 
│   on 03_variable.tf line 6:
│    6: variable "age" {
│ 
│ Unsuitable value for var.age set using -var="age=...": a number is required.
*/
