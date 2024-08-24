# TODO create an S3 bucket.
module "s3_bucket" {
  source           = "./modules/terraform-aws-s3-bucket"
  bucket           = "var.bucket"
  enable_versioning = true
  tags = var.tags
}
#resource "aws_s3_bucket_object" "textfile" {
#  bucket                 = local.files_bucket
#  key                    = "textfile.txt"
#  content                = data.template_file.textfile.rendered
#  server_side_encryption = "AES256"
#}
