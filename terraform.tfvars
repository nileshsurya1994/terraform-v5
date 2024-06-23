# Variables for us-east-1 instance
ami_us_east_1 = "ami-0e001c9271cf7f3b9"  # Replace with the actual AMI ID you want to use
instance_type = "t2.small"
key_name_us_east_1 = "north-virginiaASUS"
volume_tags_us_east_1 = {
  Name = "us-east-1-EBS"
}
tags_us_east_1 = {
  Name = "ec2-us-east-1-region"
}

# Variables for us-east-2 instance
ami_us_east_2 = "ami-0edf386e462400a51"  # Replace with the actual AMI ID you want to use
instance_type_us_east_2 = "t2.small"
key_name_us_east_2 = "us-east-2-key"
volume_tags_us_east_2 = {
  Name = "us-east-2-EBS"
}
tags_us_east_2 = {
  Name = "ec2-us-east-2-region"
}
