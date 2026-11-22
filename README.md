# aws-vpc-terraform-lab

Practice lab for building a basic AWS VPC with public and private subnets. 
Works with Terraform or OpenTofu.

Builds a VPC (10.0.0.0/16) in us-east-2 with a public and a private subnet. 
The private subnet gets outbound internet through a NAT gateway; nothing can 
reach it from outside. One Amazon Linux 2023 instance sits in the private subnet 
with a security group that only allows SSH/ping from inside the VPC.

Internet -> IGW -> public subnet (NAT GW) -> private subnet (EC2)

To run:

    terraform init
    terraform plan -out=tfplan
    terraform apply tfplan
    terraform destroy

(or swap `terraform` for `tofu`, same commands)

Notes
- ran the same code with both Terraform 1.17 and OpenTofu, no changes needed
- tested drift by changing a tag in the console, plan caught it and apply put it back
- NAT gateway costs money, destroy when done