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
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.9"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2"
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
  region = "us-west-2"
}

provider "opensearch" {
  url         = aws_opensearchserverless_collection.this_kb.collection_endpoint
  healthcheck = false
}
