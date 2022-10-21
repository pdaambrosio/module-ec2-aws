variable "servers" {
  default     = 1
  description = "number of servers to create"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "type of instance to create"
}

variable "subnet_id" {
  default     = ""
  description = "subnet id to create the instance in"
}

variable "security_group_id" {
  default     = ""
  description = "security group id to create the instance in"
}

variable "user_data" {
  default     = ""
  description = "user data to create the instance with"
}

variable "prefix" {
  default     = "webapp"
  description = "prefix to use for the instance name"
}

variable "associate_public_ip_address" {
  default     = false
  description = "associate public ip address to the instance"
}

variable "ami_id" {
  default     = ""
  description = "ami id to use for the instance"
}

variable "volume_size" {
  default     = 10
  description = "volume size to use for the instance"
}

variable "volume_type" {
  default     = "gp2"
  description = "volume type to use for the instance"
}

variable "detele_on_termination" {
  default     = true
  description = "delete on termination to use for the instance"
}

variable "extra_tags" {
  type        = map(any)
  default     = {}
  description = "extra tags to add to the instance"
}
