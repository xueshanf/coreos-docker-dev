
We need the most recent version (commit tag 28acb7baa8 ) of 
terraform which supports ec2 instance role-based profile. 

It is build into a image xuwang/terraform:latest.

Usage: 
vagrant up
vagrant ssh 
docker run -it -v $HOME/share/terraform:/tf -v $HOME/share/terraform/.aws:/root/.aws  xuwang/terraform

$ terraform version

source bin/alias.sh
tfplan
tfapply
terraform show terraform.tfstat
tfdestroyplan
terraform apply destroy.plan

Check status using aws command:

aws ec2 describe-instances --filters Name=tag-value,Values="docker-etcd-*"