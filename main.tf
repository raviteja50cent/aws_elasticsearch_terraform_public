provider "aws" {
  region = var.region
}

module "elasticsearch" {
  source = "cloudposse/elasticsearch/aws"
  namespace               = "eg"
  stage                   = "dev"
  name                    = "es"
  zone_awareness_enabled  = "true"
  elasticsearch_version   = 7.10
  instance_type           = "t2.small.elasticsearch"
  instance_count          = 1
  ebs_volume_size         = 10
}
