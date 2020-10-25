resource "aws_s3_bucket" "bucket-logs" {
  bucket        = "terraform-201920011135"
  acl           = "log-delivery-write"
  force_destroy = true
}

resource "aws_s3_bucket" "bucket" {
  bucket        = "terraform-201920011140"
  acl           = "private"
  force_destroy = true


  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = false
  }
  logging {
    target_bucket = aws_s3_bucket.bucket-logs.id
    target_prefix = "log/"
  }
}
#  policy = <<EOF
#{
#  "Id": "Policy1603547045238",
#  "Version": "2012-10-17",
#  "Statement": [
#    {
#      "Sid": "Stmt1603546855042",
#      "Action": [
#        "s3:GetObject"
#      ],
#      "Effect": "Allow",
#      "Resource": "arn:aws:s3:::terraform-201920011140/*",
#      "Principal": {
#        "AWS": [
#          "seni_stone"
#        ]
#      }
#    },
#    {
#      "Sid": "Stmt1603547041984",
#      "Action": "s3:*",
#      "Effect": "Allow",
#      "Resource": "arn:aws:s3:::terraform-201920011140/*",
#      "Principal": {
#        "AWS": [
#          "anna_jimoh"
#        ]
#      }
#    }
#  ]
#}
#}
#EOF
