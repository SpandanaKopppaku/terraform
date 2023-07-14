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
  
