# The SQS Queue's Name
output "sqs_queue_name" {
  value = aws_sqs_queue.main_queue.name
}

# The SQS Queue's arn
output "sqs_queue_arn" {
  value = aws_sqs_queue.main_queue.arn
}

# The SQS Queue's Id
output "sqs_queue_id" {
  value = aws_sqs_queue.main_queue.id
}