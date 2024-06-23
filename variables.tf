# Variables for us-east-1 instance
variable "ami_us_east_1" {
  description = "The AMI ID to use for the instance in us-east-1"
  type        = string
  default     = "ami-0eaf7c3456e7b5b68"  # Replace with your default AMI ID
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.small"
}

variable "key_name_us_east_1" {
  description = "The key name to use for the instance in us-east-1"
  type        = string
  default     = "north-virginiaASUS"
}

variable "volume_tags_us_east_1" {
  description = "Tags to assign to the volume in us-east-1"
  type        = map(string)
  default     = {
    Name = "us-east-1-EBS"
  }
}

variable "tags_us_east_1" {
  description = "Tags to assign to the instance in us-east-1"
  type        = map(string)
  default     = {
    Name = "ec2-us-east-1-region"
  }
}


# Variables for us-east-2 instance
variable "ami_us_east_2" {
  description = "The AMI ID to use for the instance in us-east-1"
  type        = string
  default     = "ami-0edf386e462400a51"  # Replace with your default AMI ID
}

variable "instance_type_us_east_2" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.small"
}

variable "key_name_us_east_2" {
  description = "The key name to use for the instance in us-east-1"
  type        = string
  default     = "us-east-2-key"
}

variable "volume_tags_us_east_2" {
  description = "Tags to assign to the volume in us-east-1"
  type        = map(string)
  default     = {
    Name = "us-east2-EBS"
  }
}

variable "tags_us_east_2" {
  description = "Tags to assign to the instance in us-east-1"
  type        = map(string)
  default     = {
    Name = "ec2-us-east-2-region"
  }
}