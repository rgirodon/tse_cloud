#!/bin/bash
aws lambda invoke --function-name rgirodon_lambda_nodejs_helloworld  --payload file://lambda_event.json out.json