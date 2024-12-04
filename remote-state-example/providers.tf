terraform {
    backend "s3" {
      bucket = "gre-bucket"
      key    = "terraform.tfstate"
      region = "eu-west-2"
      dynamodb_table = "gre_dyn_table"
    }
  }
  