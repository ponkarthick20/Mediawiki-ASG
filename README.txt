Prerequistes:
1. The system where we run this terraform code should have Terrafom and awcli installed and configured.
	Note: below approach will work in both windows and linux machines


2. A profile should be created while configuring awscli in us-east-1 region, profile name and path of the credentials should be updated in main.tf(line 4, 5)
	aws 
		
	- AWC CLI configured command and steps.
		aws configure --profile default
		Enter the below details:
		AWS Access Key ID [None]: ******
		AWS Secret Access Key [None]: *****
		Default region name [None]: us-east-1
		Default output format [None]: json

3. A key pair should be created and its name should be updated in variables.tf(line 21)

4. Please follow the below steps to pull the repository to local machine
	- pull the master repo in your local host using "git pull origin master"
    - Initialize the terraform script using "terraform init" - it will download necessary plugins and modules
    - plan the infrastructure using "terraform plan"
    - Create the infrastructure using "terraform apply"
    - In case, if you would like to delete the created infracture , execute "terraform destroy"