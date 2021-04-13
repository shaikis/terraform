## Usage
```
module "directory_service" {
#  source = "./directory_service"  # use this if you copied directory in the other repository.
#  source = "git@github.com:shaikis/directory_service.git"  # if you copied as seperate repo in git.
  ad_domain_name   = "example.com"
  domain_password  = "xxx"
  directory_size   = "small"
  project_vpc_id   = "vpc-ixxx"
  subnet_ids       = "sub-XXX'
  project_name     = "project_name"
}
```

### Input Variables

- `project_name` - Name of the project.
- `subnet_ids` - Enter the subnet id, if you are using along with vpc/subnets use aws_subnet.subnet_name.id/module.subnets.sub_net_id.
- `project_vpc_id` - Enter the vpc id , or use like aws_vpc.vpc_name.id/module.vpc.vpc_id if this module used along with vpc/subnet modules.
- `directory_size` - default directory size is Small/Large
- `domain_password` - pass the domain_password.use vault key and password method for security reasons.
- `ad_domain_name` -  (Required) The fully qualified name for the directory, such as corp.example.com

### Output Variables
- `aws_directory_id` - Directory id

