output "print-userdetails" {
  value = "Hello ${var.username}, your age is ${var.age} and friends of ${var.friends[0]} and friends age is ${lookup(var.friends_age, var.friends[0])}"
}
