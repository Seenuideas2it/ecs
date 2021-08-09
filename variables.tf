variable "aws_region" {
  default     = "ca-central-1"
  description = "aws region where our resources going to create choose"
  #replace the region as suits for your requirement
}

variable "az_count" {
  default     = "2"
  description = "number of availability zones in above region"
}

variable "ecs_task_execution_role" {
  default     = "myECSTaskExecutionRole"
  description = "ECS task execution role name"
}

variable "app_image" {
  default     = "096176992732.dkr.ecr.ap-south-1.amazonaws.com/fego-transaction:null-199"
  description = "docker image to run in this ECS cluster"
}

variable "app_port" {
  default     = "80"
  description = "portexposed on the docker image"
}

variable "app_count" {
  default     = "2" # i have choosen 2 AZ
  description = "numer of docker containers to run"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  default     = "4096"
  description = "fargate instacne CPU units to provision"
}

variable "fargate_memory" {
  default     = "8192"
  description = "Fargate instance memory to provision "
}
