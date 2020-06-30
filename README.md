# docker-assessment
## About

This is a small project to acheive some task.

### Task 1
* Create 3 Docker Containers - NGINX, MySQL & Kibana
* Run all 3 containers from a Bash script
* All 3 containers must be able to communicate with each other

### Task 2
* CloudFormation Template to provision an EC2 Instance in a default VPC
* Python Script to START the provisioned EC2 Instance
* Python Script to STOP the provisioned EC2 Instance


## Requirements
* Install Docker on your machine
* AWS Account
* AWS CLI Installed
* Configure AWS Credentials
* Install Boto3


## Task 1
Bash Script
```
$ chmod +x setup.sh
```
```
$ ./setup.sh
```

Docker Compose
```
$ docker-compose up -d
```

## Task 2
Create EC2 Instance with CloudFormation
```
$ aws cloudformation deploy --template-file ec2.yml --stack-name single-ec2
```

Enter your EC2 Instance ID in a file with the name *instance_id.txt* and save this file
```
*instance_id.txt*
```

STOP EC2 Instance with Python Script
```
$ python3 start_stop_ec2.py -d
```

START EC2 Instance with Python Script
```
$ python3 start_stop_ec2.py -u
```

## Cleanup
Remember to cleanup resources created on AWS - delete CloudFormation stack
```
$ aws cloudformation delete-stack --stack-name single-ec2
```
