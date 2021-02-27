resource "aws_fsx_windows_file_system" "example" {
  active_directory_id = var.ad_directory_id
  kms_key_id          = var.kms_key_arn
  storage_capacity    = 300
  subnet_ids          = var.subnet_ids
  throughput_capacity = 1024
}