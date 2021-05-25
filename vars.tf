variable "region" {
  default = "us-east-1"
}

variable "domain_name" {
  default     = "terraformesaws"
}

variable "elasticsearch_version" {
  default     = "7.10"
}

variable "instance_type" {
  default     = "t2.small.elasticsearch"
}

variable "instance_count" {
  default     = 1
}

variable "zone_awareness_enabled" {
  default     = true
}

variable "availability_zone_count" {
  default     = 2
}

variable "ebs_volume_size" {
  default     = 10
}

variable "ebs_volume_type" {
  default     = "gp2"
}

variable "ebs_iops" {
  default     = 0
}

variable "encrypt_at_rest_enabled" {
  default     = false
}

variable "encrypt_at_rest_kms_key_id" {
  default     = ""
}

variable "automated_snapshot_start_hour" {
  default     = 0
}

variable "dedicated_master_enabled" {
  default     = false
}

variable "dedicated_master_count" {
  default     = 0
}

variable "dedicated_master_type" {
  default     = "t2.small.elasticsearch"
}

variable "advanced_options" {
  default     = {}
}

variable "node_to_node_encryption_enabled" {
  default     = false
}
