/* SecurityGroup for ALB */
resource "aws_security_group" "meetwithkids-alb-sg" {
  description = "ALB security group for cs"
  name        = "meetwithkids-alb-sg"
  vpc_id      = aws_vpc.meetwithkids-vpc.id
}

