variable "region" {
  type    = string
  default = "ap-northeast-1"
}

data "aws_prefix_list" "s3_pl" {
  name = "com.amazonaws.${var.region}.s3"
}
