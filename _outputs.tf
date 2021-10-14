output "mount_target_id" {
  value = { for id in keys(aws_efs_mount_target.mount_target) : id => aws_efs_mount_target.mount_target[id].id }
}

output "file_system_arn" {
  value = aws_efs_file_system.efs.arn
}

output "file_system_id" {
  value = aws_efs_file_system.efs.id
}

output "access_point_ids" {
  value       = { for id in keys(aws_efs_access_point.efs_access_point) : id => aws_efs_access_point.efs_access_point[id].id }
  description = "EFS AP ids"
}