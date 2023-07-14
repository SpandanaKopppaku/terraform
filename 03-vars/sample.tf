# Declaring an empty varibale city

variable "city" {}

output "city_name" {
    value = "Our city name is ${var.city}"
}