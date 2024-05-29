# AWS VPC with EC2 and RDS using Terraform

This project demonstrates how to set up an AWS VPC with public and private subnets, an EC2 instance in the public subnet, and an RDS instances in the private subnets using Terraform.  
The configuration uses loops and variables for scalability and reusability.


## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account and AWS CLI configured
- Access and secret keys with necessary permissions to create AWS resources

## Project Structure

    ```plaintext
    .
    ├── main.tf
    ├── variables.tf
    ├── README.md


## RUN  

    ```Bash  
    terraform init  
    terraform plan  
    terraform apply  


## Project Output  

    1- New VPC with 3 subnets (1 public, 2 private) , Internetgateway and Routetable  

    ![VPC](https://github.com/OmarElshrief/IVolve-Intern/blob/main/terraform/Lab_1/VPC.png)  

    2- EC2 instance in public subnet  

    ![EC2](https://github.com/OmarElshrief/IVolve-Intern/blob/main/terraform/Lab_1/ec2%20.png)  

    3- New RDS Database in private subnet  

    ![RDS](https://github.com/OmarElshrief/IVolve-Intern/blob/main/terraform/Lab_1/RDS.png)







