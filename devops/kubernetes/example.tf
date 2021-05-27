module "ops" {
  source     = "./module"
  name       = "ops"
  service    = "root"

  kubernetes_version = "1.15"
  release_version    = "1.15.10-20200228"
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  nodegroup_enabled = true
  node_group_name   = "ops-nodes"
  ec2_ssh_key       = "root_bastion_host"
  disk_size         = 100
  desired_size      = 3
  max_size          = 5
  min_size          = 3
}

module "dev" {
  source     = "./module"
  name       = "dev"
  service    = "dev"

  kubernetes_version = "1.17"
  release_version    = "1.17.9-20200814"
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  nodegroup_enabled = true
  node_group_name   = "dev-nodes"
  instance_types     = ["t2.large"]
  disk_size         = 50
  desired_size      = 3
  max_size          = 3
  min_size          = 3
}

module "staging" {
  source     = "./module"
  name       = "staging"
  service    = "staging"

  kubernetes_version = "1.17"
  release_version    = "1.17.9-20200814"
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  nodegroup_enabled = true
  node_group_name   = "staging-nodes"
  instance_types     = ["c5.2xlarge"]
  disk_size         = 100
  desired_size      = 3
  max_size          = 5
  min_size          = 3
}

module "production" {
  source     = "./module"
  name       = "prod"
  service    = "prod"

  kubernetes_version = "1.16"
  release_version    = "1.16.9-20200814"
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  node_group_name   = "prod-nodes"
  disk_size         = 100
  desired_size      = 6
  max_size          = 9
  min_size          = 3
}

