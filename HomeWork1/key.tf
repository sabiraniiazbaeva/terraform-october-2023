resource "aws_key_pair" "deployer" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output key_name {
    value = aws_key_pair.deployer
}

resource "aws_s3_bucket" "bucket" {
  bucket = "homework-sabira1"
} 

resource "aws_s3_bucket" "bucket2" {
  bucket = "homework-sabira2"
}