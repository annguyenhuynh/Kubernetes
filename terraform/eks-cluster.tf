module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "21.15.1"

    name = "an-demo"
    kubernetes_version =  var.kubernetes_version

    enable_irsa = true
    vpc_id = module.vpc.vpc_id
    subnet_ids = module.vpc.private_subnets


    eks_managed_node_groups = {
        default = {
            instance_types = ["t3.medium"]
            desired_size = 2
            min_size = 1
            max_size = 3

            subnet_ids = module.vpc.private_subnets

        }
        
    }



}

