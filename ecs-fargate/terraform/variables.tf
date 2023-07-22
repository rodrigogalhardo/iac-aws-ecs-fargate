variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_task_role_arn" {
  description = "value of the task role arn"
  type        = string
}

variable "aws_ecs_cluster_name" {
  description = "name of the ecs cluster"
  type        = string
}

variable "aws_ecs_service_name" {
  description = "name of the ecs cluster service"
  type        = string
}

variable "aws_ecr_repository_name" {
  description = "name of the ecr repository"
  type        = string
}

variable "aws_ecs_container_definition_name" {
  description = "name of the ecs container definition"
  type        = string
}

variable "aws_ecs_task_definition_family_name" {
  description = "name of the ecs task definition"
  type        = string
}

variable "aws_security_group_name" {
  description = "name of the security group"
  type        = string
}