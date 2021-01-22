https://www.terraform.io/downloads.html
In Linux, put it under /usr/local/bin

SECTIONS
Provider
* Middle tier
Resources
* The meat 
Output
* Data of the results
Data
* Data of existing resources
Variable
* variable a_var {default="a"}
* terraform plan --var-file="dev.tfvars"
* terraform plan -var="bucket_name=mys3bucket"
Locals

Interpolations
 bucket = var.bucket_name == "" ? "mine" : "${var.bucket_name}-mine"

COMMANDS
init
validate
apply
plan
destroy


Plugin
* VSCode
** Hashicorp Terraform
