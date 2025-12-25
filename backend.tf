terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket-naveen1"
    key    = "env/terraform.tfstate"
    region = "us-west-2"
  }
}
