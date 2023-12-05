terraform {
  backend "s3" {
    bucket = "ml-terraform-tfstate"
    region = "sa-east-1"
    key = "eks/terraform.tfstate"
  }
}