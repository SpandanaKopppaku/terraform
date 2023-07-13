variable "sample" {
   default = "Welcome To Terraform" 
  
}

output "sample_op"{

    value = var.sample
}

output "sample_var_op" {
    value = "Value of the variable is ${var.sample_op}"
    }

# A Variable can be accessed directly by calling it as var.variableName, but if you're accessing in between a set of strings, then you need to enclose them in quotes and it should referred using ${var.VarName}
# In Terraform there is no concept of Single Quotes. 
