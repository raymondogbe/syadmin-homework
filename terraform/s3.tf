# TODO create an S3 bucket.
module "s3_bucket" {
  source           = "./modules/terraform-aws-s3-bucket"
  bucket           = "1ot-platform-state-local"
}
#resource "aws_s3_bucket_object" "textfile" {
#  bucket                 = local.files_bucket
#  key                    = "textfile.txt"
#  content                = data.template_file.textfile.rendered
#  server_side_encryption = "AES256"
#}
