# Terraform Minkube Local cluster deployment
# tf-k8s-minikube-poc


 This project is used to deploy Kubernetes resources in a local minikube cluster using Terraform
 because testing using aws and other cloud resources cost pennies. 

This simply deploys nginx into a specific namespace and checks that its up and running.

Requirements: 

* [minikube](https://minikube.sigs.k8s.io/docs/start/)
* [terraform cli](https://www.terraform.io/downloads)




# R&R - References and Resources

* namespaces - k8s grouping of different workloads. Used for secrets, running containers, and can be used to isolate dev/prod environments
* deployment - a k8s config declaration that declares the configuration of workloads
* kube config - the file created with minikube that defines the cluster. This is used for context (parameters used for user,namespaces, and cluster setup)

