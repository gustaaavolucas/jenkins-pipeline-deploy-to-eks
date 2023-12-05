module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "~> 19.0"
    cluster_name = "cloud-app"
    cluster_version = "1.24"

    cluster_endpoint_public_access  = true

    vpc_id = "vpc-0d9a5eb173bedc44f"
    subnet_ids = ["subnet-027b8e77051561ac2", "subnet-09ee0277dc0fab4a8"]

    tags = {
        environment = "development"
        application = "myapp"
    }

    eks_managed_node_groups = {
        dev = {
            min_size = 1
            max_size = 3
            desired_size = 2

            instance_types = ["t2.small"]
        }
    }
}