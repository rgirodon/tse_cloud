#!/bin/bash
aws lambda invoke --function-name rgirodon_lambda_nodejs_helloworld  --payload file://lambda_event.json out.json

aws lambda create-event-source-mapping --function-name ProcessSQSRecord --batch-size 10 --event-source-arn arn:aws:sqs:us-east-1:343830583259:ProcessRecords_Queue

aws lambda list-event-source-mappings --function-name ProcessSQSRecord --event-source-arn arn:aws:sqs:us-east-1:343830583259:ProcessRecords_Queue

aws lambda delete-event-source-mapping --uuid 94a2f9d8-c240-4be1-a7e4-955cf21237b4  