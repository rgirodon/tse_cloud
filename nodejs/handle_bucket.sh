#!/bin/bash

#create bucket
aws s3 mb s3://rgirodon-first-bucket

#list the bucket
aws s3 ls s3://rgirodon-first-bucket

#put a file in bucket
aws s3 cp data/img.jpeg s3://rgirodon-first-bucket --metadata '{ "type" : "quote" }'

#list the bucket
aws s3 ls s3://rgirodon-first-bucket

#get objects of the bucket
aws s3api list-objects --bucket rgirodon-first-bucket

#get object metadata by key
aws s3api head-object --bucket rgirodon-first-bucket --key img.jpeg

#get object by key
aws s3api get-object --bucket rgirodon-first-bucket --key img.jpeg data/img_dl.jpeg

#remove object by key
aws s3api delete-object --bucket rgirodon-first-bucket --key img.jpeg

#remove bucket
aws s3 rb s3://rgirodon-first-bucket --force

