resource "aws_efs_mount_target" "mount_target" {
  for_each = toset(var.private_subnet_ids)

  file_system_id  = aws_efs_file_system.efs.id
  subnet_id       = each.value
  security_groups = [aws_security_group.efs_sg.id]
}