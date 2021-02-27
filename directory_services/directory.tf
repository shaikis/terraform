resource "aws_directory_service_directory" "bar" {
  name     = var.ad_domain_name
  password = var.domain_password
  size     = var.directory_size

  vpc_settings {
    vpc_id     = var.project_vpc_id
    subnet_ids = var.subnet_ids
  }

  tags = {
    Project = var.project_name
  }
}
