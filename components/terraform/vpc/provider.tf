terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = var.stage == "prod" ? "chris-personal-1" : "default"
  default_tags {
    tags = {
      Client = "procore"
      TicketName = var.ticket_name
    }
  }
}
