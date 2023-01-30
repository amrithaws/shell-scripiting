#!/bin/bash


####################
# Author: Amrith
# Date: 20th jan 2023
#
# Version: V1
#
# This script will report the AWS resource usage
####################
set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM user

# list of s3 buckets
echo "printing list of buckets"
aws s3 ls


# list of EC2 insatnces
echo "printing list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


# list of AWS lambda
echo "printing list of lambda functions"
aws lambda list-functions


# list of IAM user
echo "printing list of IAM users"
aws iam list-users
