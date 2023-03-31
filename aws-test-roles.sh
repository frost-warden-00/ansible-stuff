#!/bin/bash

if [[ $1 == "apply" ]]
then
  aws ssm get-parameter --name /key_pair/ec2_instances/ec2_instances.pem --with-decryption --query Parameter.Value --output text --profile terraform_cloud >> ~/.ssh/ec2_instances.pem
  chmod 400 ~/.ssh/ec2_instances.pem
  cd .terraform_ansible || exit
  terraform init
  terraform apply -auto-approve
fi

if [[ $1 == "destroy" ]]
then
  rm -f ~/.ssh/ec2_instances.pem
  cd .terraform_ansible || exit
  terraform destroy -auto-approve
fi
