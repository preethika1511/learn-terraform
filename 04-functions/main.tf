variable "fruits" {
  default = ["apple", "banana", "grapes"]
}

output "fruits" {
  value = var.fruits[2]
  value = element(var.fruits, 2)
}