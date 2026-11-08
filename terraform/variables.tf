
variable "aws_region" {
  description = "AWS region where our infrastructure will be deployed"
  type        = string
  default     = "us-east-2"
}
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Name of our DevOps project"
  type        = string
  default     = "devops-code-challenge1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
# Frontend Fargate configuration
variable "frontend_cpu" {
  description = "CPU units allocated to frontend task"
  type        = number
  default     = 512
}

variable "frontend_memory" {
  description = "Memory allocated to frontend task in MiB"
  type        = number
  default     = 1024
}

variable "frontend_port" {
  description = "Port used by frontend container"
  type        = number
  default     = 3000
}

variable "frontend_image" {
  description = "Frontend Docker image URI"
  type        = string
  default     = ""
}

# Backend Fargate configuration
variable "backend_cpu" {
  description = "CPU units allocated to backend task"
  type        = number
  default     = 512
}

variable "backend_memory" {
  description = "Memory allocated to backend task in MiB"
  type        = number
  default     = 1024
}

variable "backend_port" {
  description = "Port used by backend container"
  type        = number
  default     = 8080
}

variable "backend_image" {
  description = "Backend Docker image URI"
  type        = string
  default     = ""
}

# ECS service configuration
variable "desired_tasks" {
  description = "Desired number of running ECS tasks per service"
  type        = number
  default     = 1
}
variable "min_tasks" {
  description = "Minimum number of ECS tasks per service"
  type        = number
  default     = 1
}

variable "max_tasks" {
  description = "Maximum number of ECS tasks per service"
  type        = number
  default     = 4
}

variable "cpu_threshold" {
  description = "Target CPU utilization percentage for auto scaling"
  type        = number
  default     = 50
}