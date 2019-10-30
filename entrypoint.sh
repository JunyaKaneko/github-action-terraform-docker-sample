#!/bin/sh -l

#chdir $GITHUB_WORKSPACE/$1
terraform init -input=false
terraform plan -input=false
terraform apply -auto-approve
sleep 30
terraform destroy -auto-approve
