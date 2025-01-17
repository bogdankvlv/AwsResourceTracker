#!/bin/bash
#
# Author : Bogdan Kovalov
#
# Version: 1.0
#
# This script will report the AWS resource usage
#
# AWS S3
# AWS EC2
# AWS Lambda
# Aws IAM Users
#

#list s3 buckets

echo "Print list of s3 buckets"
aws s3 ls

#list Ec2 instances

echo "Print list of ec2 instances"
aws ec2 describe-instances | jq ' .Reservations[].Instances[].InstanceId'

#list lambda

echo "Print list of lambda functions"
aws lambda list-functions


#list IAM users
#
echo "Print list of Iam users"
aws iam list-users



