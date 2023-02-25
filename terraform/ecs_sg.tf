/* SecurityGroup for ECS */
resource "aws_security_group" "meetwithkids-ecs-sg" {
  description = "ECS security group for meetwithkids"
  name        = "meetwithkids-ecs-sg"
  vpc_id      = aws_vpc.meetwithkids-vpc.id
}

/* SecurityGroup for ECS */
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule1" {
  description       = "meetwithkids-ecs-sg-rule1"
  type              = "ingress"
  from_port         = 8
  to_port           = 0
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule2" {
  description       = "meetwithkids-ecs-sg-rule2"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule3" {
  description       = "meetwithkids-ecs-sg-rule3"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule4" {
  description       = "meetwithkids-ecs-sg-rule4"
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule5" {
  description              = "meetwithkids-ecs-sg-rule5"
  type                     = "ingress"
  from_port                = 0
  to_port                  = 0
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.meetwithkids-alb-sg.id
  security_group_id        = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule6" {
  description       = "meetwithkids-ecs-sg-rule6"
  type              = "ingress"
  from_port         = 3000
  to_port           = 3000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
resource "aws_security_group_rule" "meetwithkids-ecs-sg-rule7" {
  description       = "meetwithkids-ecs-sg-rule7"
  type              = "ingress"
  from_port         = 5001
  to_port           = 5001
  # from_port         = 8080
  # to_port           = 8080
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.meetwithkids-ecs-sg.id
}
