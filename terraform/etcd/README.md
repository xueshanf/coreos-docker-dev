
We need the most recent version (commit tag 28acb7baa8 ) of 
terraform which supports ec2 instance role-based profile. 

It is build into a image xuwang/terraform:latest.

Usage: 
vagrant up
vagrant ssh
docker run -it -v $HOME/share/terraform:/tf -v $HOME/share/.aws:/root/.aws  xuwang/terraform

$ terraform version
