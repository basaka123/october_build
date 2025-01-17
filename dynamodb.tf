# create a dynamodb table for locking the state file
resource "aws_dynamodb_table" "terraform-locking" {
  name           = "terraform-locking"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "DynamoDB Terraform State Lock Table"
    Environment = "prod-env"
  }
}
