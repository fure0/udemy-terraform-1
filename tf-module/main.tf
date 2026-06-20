terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

module "webserver" {
  source        = "./modules/nginx_serevr"
  instance_type = "t2.micro"
}

output "web_server_id" {
  value = module.webserver.instance_id
}
