provider.tf (This file will contains the details of terraform plugin provider)
resource.tf (This file will contains all the resource related configurations )
terraform.tfstate (This file contains all the state informations related to the resources)
variable.tf (Here we need to defined the function related to the variable)
terraform.tfvars (This file contains the variable informations and the file name should be terraform.tfvars.)

Commands------------------->

terraform init
terraform plan
terraform plan -var-file=terra.tfvars
terraform plan -var "userage=[55,26]" -var "name=["Ankit","Hari"]"
terraform apply
terraform apply --auto-approve
terraform destroy
terraform destroy --target github_repository.my-second-repo
terraform show #this command will show all the resource configurations present in terraform.tfstate file
terraform refresh # this command will sync the changes made in the repo from the Ui and update the terraform.tfstate file.
terraform validate # This command will validate the configurations made in all the files
terraform output terraform_first_url
terraform fmt # This command will correct all the indentation in all the files
terraform taint aws_security_group.terraform_SG # This command will taint the aws_security_group, so that when we run terraform plan command next time it will create a new aws_security_group.
