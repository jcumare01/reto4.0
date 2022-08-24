provider "aws" {
region = "us-east-1"
  
}

resource "aws_s3_bucket" "webtest1" {
    bucket= var.bucket_name
    acl = "public-read"
    website {
      index_document = "index.html"
    }
}


resource "aws_s3_bucket_object" "object1" {
    bucket = aws_s3_bucket.webtest1.bucket
  key = "index.html"
  acl = "public-read"
  content = var.content
  content_type = "text/html"
}