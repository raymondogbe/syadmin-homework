# TODO create an S3 bucket.

resource "aws_s3_bucket" "s3_bucket_new" {
  bucket           = "1ot-platform-state-local-new"
}

resource "aws_s3_bucket_object" "s3_file" {
  bucket = aws_s3_bucket.s3_bucket_new.bucket
  key    = "ray-file.txt"
  source = "terraform/ray-file.txt" 
  acl    = "public-read"
  depends_on = [aws_s3_bucket.s3_bucket_new]
}


#resource "aws_s3_bucket_object" "textfile" {
#  bucket                 = local.files_bucket
#  key                    = "textfile.txt"
#  content                = data.template_file.textfile.rendered
#  server_side_encryption = "AES256"
#}
