#!/bin/bash
echo Enter the region
read region 
aws cloudformation list-stacks --region $region | grep "StackName"
echo Enter Stack name
read stackname
aws cloudformation list-stack-resources --stack-name $stackname > output.py
vi output.py

