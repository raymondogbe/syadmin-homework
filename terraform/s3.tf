# TODO create an S3 bucket.

resource "aws_s3_bucket" "s3_bucket_new" {
  bucket           = "1ot-platform-state-local-new"
}

#resource "aws_s3_bucket_object" "textfile" {
#  bucket                 = local.files_bucket
#  key                    = "textfile.txt"
#  content                = data.template_file.textfile.rendered
#  server_side_encryption = "AES256"
#}
