resource "aws_iam_policy" "s3_policy_lambda" {
  name        = "cloudwatch_s3_policy_lambda"
  path        = "/"
  description = "policy to allow lambda function to access specific s3 bucket and put its logs in cloudwatch"

  policy = jsonencode({

    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "S3Access",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:ListBucket"
            ],
            "Resource": [
                "arn:aws:s3:::mybucket-yousra",
                "arn:aws:s3:::mybucket-yousra/*"
            ]
        }

    ]


  })
}