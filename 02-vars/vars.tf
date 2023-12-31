variable "sample" {
   default = "Welcome To Terraform" 
  
}

output "sample_op"{

    value = var.sample
}

output "sample_var_op" {
    value = "Value of the variable is ${var.sample}"
    }

# A Variable can be accessed directly by calling it as var.variableName, but if you're accessing in between a set of strings, then you need to enclose them in quotes and it should referred using ${var.VarName}
# In Terraform there is no concept of Single Quotes. 


# List Varaibale
variable "example_list" {
    default = [
        "AWS" ,
        "DEVOPS" ,
        "Terraform"

    ] 
}

output "example_list_op" {
    value = "Welcome to ${var.example_list[1]} with ${var.example_list[0]}" 
    
}

# what is a map variable? A variable with multiple key value pairs is reffered as map variable

variable "example_map" {
    default = {
        Training = "DevOpswithAWS"
        Mode     = "Online"
    }
  
}
output "example_map_op" {
    value = "We are learning ${var.example_map["Training"]} and mode of it is ${var.example_map["Mode"]}"
  
}
