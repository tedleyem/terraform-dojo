#!/bin/bash
# Script to deploy and check kuberenetes in minikube 
# cluster 


echo "Runing tf init" && sleep 2
terraform init
echo "Running tf plan" && sleep 2
terraform plan
echo "Running tf apply" && sleep 2
terraform apply

echo "Get deployment" && sleep 3
kubectl get deployment -n tf-namespace

echo "Get pods in tf-namespace" && sleep 3
kubectl get pods -n tf-namespace

 #terraform destroy
