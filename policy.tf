resource "aws_iam_policy" "eks_list_nodes_policy" {
  name        = "eks-list-nodes-policy"
  description = "IAM policy to allow listing nodes in Amazon EKS clusters"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = "eks:ListNode",
        Resource = "*",
      },
    ],
  })
}

resource "aws_iam_policy_attachment" "attach_eks_policy_to_user" {
  name       = "attach-eks-policy-to-user"
  users      = ["Shakthi-Manjunathan"]
  policy_arn = aws_iam_policy.eks_list_nodes_policy.arn
}