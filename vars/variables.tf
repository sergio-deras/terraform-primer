
variable "bucket_name" {
  # Without this, TF will request a name or you need to provide it with a file or an argument
  # default = "randomized-bucket" 
  description = "A bucket with a pseudo-random name"
}

resource "aws_s3_bucket" "rbucket"{
    bucket = var.bucket_name
}

# terraform plan --var-file="dev.tfvars"
# terraform plan -var="bucket_name=mys3bucket"


resource "aws_s3_bucket" "withprefixbucket"{
    bucket = var.bucket_name == "" ? "mine" : "${var.bucket_name}-mine"
}

locals {
  instance_name = "dev-instance"
  instance_type = "t2.micro"
}

resource "aws_instance" "inst" {
  ami = "value"
  instance_type = local.instance_type
  tags {
    Name=local.instance_name
  }
}