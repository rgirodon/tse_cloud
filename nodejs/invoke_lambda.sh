#!/bin/bash
aws lambda invoke --function-name rygn-first-lambda --payload '{"name" : "Rémy"}' out.json

aws lambda invoke --function-name rygn-first-lambda --payload file://lambda_event.json out.json

# with aws cli v2
# --cli-binary-format raw-in-base64-out

aws lambda create-event-source-mapping --function-name ProcessSQSRecord --batch-size 10 --event-source-arn arn:aws:sqs:us-east-1:150282616767:rygn-first-sqs

aws lambda list-event-source-mappings --function-name ProcessSQSRecord --event-source-arn arn:aws:sqs:us-east-1:150282616767:rygn-first-sqs

aws lambda delete-event-source-mapping --uuid ac8802ba-0b30-4a1a-90bd-250fd5576c43