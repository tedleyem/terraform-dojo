# Storing State Files

### You should store your state files remotely, not on your local machine! The location of the remote state file can then be referenced using a backendblock in the terraform block (which is usually in the main.tf file).


### It is not a good idea to store the state file in source control. This is because Terraform state files contain all data in plain text, which may contain secrets.


State files, by default, are stored in the local directory where Terraform is run. If you are using Terraform to test or for a personal project, this is fine (as long as your state file is secure and backed up!). However, when working on Terraform projects in a team, this becomes a problem because multiple people will need to access the state file.

Also, when using automation and CI/CD pipelines to run Terraform, the state file needs to be accessible, and permission must be given to the service principal running the pipeline to access the storage account container that holds the state file. This makes shared storage the perfect candidate to hold the state file. Permissions can be granted as needed. Azure Storage accounts or Amazon S3 buckets are an ideal choice.