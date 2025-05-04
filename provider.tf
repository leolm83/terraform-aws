terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.96.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.36.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "3.0.0-pre2"
    }

  }
  #   envia config para o bucket no s3
  backend "s3" {
    bucket = "leolms-tfstate-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.current.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.current.certificate_authority[0].data)
  exec {
    api_version = "client.authentication.k8s.io/v1beta1"
    args        = ["eks", "get-token", "--cluster-name", module.leolm_terraform_eks_cluster.cluster_name]
    command     = "aws"
  }
}
provider "helm" {
  kubernetes = {
    host                   = data.aws_eks_cluster.current.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.current.certificate_authority[0].data)
    exec = {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.leolm_terraform_eks_cluster.cluster_name]
      command     = "aws"
    }
  }
}

