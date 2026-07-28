provider "aws" {
  region = "us-east-1"
}

# The Target IAM Role
resource "aws_iam_role" "ec2_admin_role" {
  name = "TKH-EC2-Admin-Role"

  # SABOTAGE 1: The broken Trust Policy
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          # BUG: Incorrect AWS service principal name
          Service = "ec2.amazonaws.com" 
        }
      }
    ]
  })
}

# SABOTAGE 2: Dangerously broad permissions
resource "aws_iam_role_policy" "admin_policy" {
  name = "TKH-Too-Broad-Policy"
  role = aws_iam_role.ec2_admin_role.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ]

        Effect = "Allow"
        Resource = "*"

      }
    ]
  })
}
