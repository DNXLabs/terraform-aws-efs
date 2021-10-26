resource "aws_efs_access_point" "efs_access_point" {
  for_each       = toset(var.access_points)
  file_system_id = aws_efs_file_system.efs.id
  root_directory {
    creation_info {
      owner_gid   = var.efs_access_point_gid
      owner_uid   = var.efs_access_point_uid
      permissions = 755
    }
    path = "/${each.key}"
  }
}