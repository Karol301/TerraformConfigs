resource "aws_eks_cluster" "control_plane" {
  name = "control_plane"
  version  = "1.31"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.mysub1.id,
      aws_subnet.mysub2.id,
    ]
    endpoint_public_access  = true
    endpoint_private_access = false
  }
}

resource "aws_eks_node_group" "workers" {
  cluster_name = aws_eks_cluster.control_plane.name
  node_group_name = "my-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
}