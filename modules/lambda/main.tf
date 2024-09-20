# Zip .py file 

data "archive_file" "this" {
  type        = "zip"
  source_file = var.source_file
  output_path = replace(var.source_file, ".py", ".zip")
}

# Create AWS Lambda function

resource "aws_lambda_function" "this" {
  filename         = data.archive_file.this.output_path
  function_name    = var.function_name
  role             = aws_iam_role.this.arn
  handler          = var.handler
  runtime          = var.runtime
  source_code_hash = data.archive_file.this.output_base64sha256
  
  vpc_config {
    security_group_ids = [aws_security_group.this.id]
    subnet_ids         = var.subnet_ids
  }

  environment {
    variables = {
      foo = "bar"
    }
  }
}