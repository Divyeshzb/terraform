
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "tf-dm-test"
  acl    = "public-read"

  # Allow deletion of non-empty bucket
  force_destroy = true
  versioning = {
    enabled = true
  }

}
