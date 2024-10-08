terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.48"
    }
    opensearch = {
      source  = "opensearch-project/opensearch"
      version = "= 2.2.0"
    }
  }
  required_version = "~> 1.5"
}

provider "aws" {
  region = "us-west-2"
}

provider "aws" {
  alias  = "oregon"
  region = "us-west-2"
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}
