# using AWS provider, got info from terraform registry website

terraform {
    backend "remote"{
        hostname = ""
        organization = "Terraform-tester"

        workspaces {
          name = "Getting-Started"
        }
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.37.0"
    }
  }
}

#provider block
provider "aws" {
  #profile = "default"
  region = "us-east-1"
}

#local variable block
locals {
  project_name = "Trey"
}

# part of the course showed how to connect to Terraform Cloud which keeps a version in the cloud of your state file for organizational collaboration