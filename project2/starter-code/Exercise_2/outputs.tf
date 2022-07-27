# TODO: Define the output variable for the lambda function.
output "arn" {
  description = "The Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.greet_lambda.arn
}
