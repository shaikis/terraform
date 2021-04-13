## Usage
```
module "sqs" {
  source = "./sqs"
  sqs_name = "New-SQS-Queue"
}
```

### Input Variables

- `sqs_queue_name` - Name of the SQS Queue.
- `sqs_delay_seconds` - The time in seconds that the delivery of all messages in the queue will be delayed. Default is 0
- `sqs_max_message_size` - The limit of how many bytes a message can contain before Amazon SQS rejects it. Default is 262144(256 KiB).
- `sqs_message_retention_seconds` - The number of seconds Amazon SQS retains a message. Default is 345600sec(4 days).
- `sqs_receive_wait_time_seconds` - The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. Default is 0.
- `sqs_visibility_timeout_seconds` -  The time during which SQS prevents other consuming components from receiving and processing the message default 30 sec

### Output Variables
- `sqs_queue_arn` - ARN of the SQS Queue
- `sqs_queue_name` - Name of the SQS Queue
- `sqs_queue_id` - Id of the SQS Queue
