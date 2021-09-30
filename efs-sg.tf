resource "aws_security_group" "efs_sg" {
  #count  = length(var.security_groups) > 0 ? 0 : 1
  name   = "${var.environment_name}-efs-sg"
  vpc_id = var.vpc_id

  lifecycle {
    create_before_destroy = true
  }
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_security_group_rule" "mwaa_sg_inbound_vpc" {
  #count             = length(var.security_groups) > 0 ? 0 : 1
  type              = "ingress"
  from_port         = 2049
  to_port           = 2049
  protocol          = "tcp"
  cidr_blocks       = [data.aws_vpc.selected.cidr_block]
  security_group_id = aws_security_group.efs_sg.id
  description       = "VPC CIDR Inbound Access"
}
