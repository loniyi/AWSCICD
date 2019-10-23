provider "aws" {
    region = us-east-1
    profile = var.profile
   version = ">= 0.12"
}

terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "TheYoelGroup"

        workspaces {
            name = "AWSCICDTEST"
        }
    }
}

resource "null_resource" "delete_vpc" {
    }



