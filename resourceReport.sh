#!/bin/bash

########################
# Author: Nishvnt
# 
# Version: v1.0
#
# This Script will report the AWS Resources Usage
########################

# list s3 buckets
echo "LIST OF S3 BUCKETS"
aws s3 ls

# list ec2 instances
echo "LIST OF EC2 INSTANCES"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

# list lambda funcs
echo "LIST OF LAMBDA FUNCTIONS"
aws lambda list-functions

# list IAM users
echo "LIST OF IAM USERS PRESENT"
aws iam list-users

