provider "aws" {
  region = "us-east-1"
}

module "aws_es" {

  source  = "lgallard/elasticsearch/aws"

  domain_name           = "elasticsearch-publicaws"
  elasticsearch_version = "7.10"

  cluster_config = {
    dedicated_master_enabled = false
    instance_count           = 1
    instance_type            = "t2.small.elasticsearch"
    zone_awareness_enabled   = false
    availability_zone_count  = 0
  }

  ebs_options = {
    ebs_enabled = "true"
    volume_size = "10"
  }

  log_publishing_options = {
    enabled                  = false
    log_type                 = "INDEX_SLOW_LOGS"
  }

  encrypt_at_rest = {
    enabled    = false
  }

  node_to_node_encryption_enabled  = true

}
