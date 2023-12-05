terraform {
  backend "s3" {
    bucket = "aml-terraform-tfstate"
    region = "sa-east-1"
    key = "eks/terraform.tfstate"
  }
}