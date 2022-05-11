variable "infrastructure" {
  default     = "stage"
}

variable "aws_instance_name" {
    type = map
       default = {
        prod="production"
        stage="stage" 
      }
}

variable "aws_region" {
    type = map
       default = {
        prod="us-east-1"
        stage="us-east-2" 
      }
}

variable "aws_availability_zone" {
      type = map
      default = {
      prod="us-east-1a"
      stage="us-east-2a" 
    }
}

variable "aws_ami" {
  type = map
  default = {
      prod="ami-09d56f8956ab235b3"
      stage="ami-0fa49cc9dc8d62c84" 
  }
}

variable "aws_instance_count" {
  type = map
  default = {
      prod="2"
      stage="1" 
  }
}
variable "key_name" {
    type = map
    default = {
      prod="new-key"
      stage="ohio" 
   }
}


variable "main_vpc_cidr" {
  default = "10.0.0.0/24"
}

variable "public_subnets" {
  default = "10.0.0.128/26"
}

variable "private_subnets" {
  default = "10.0.0.192/26"
}


variable "aws_instance_type" {
  default = "t2.micro"
}

variable "script_path" {
  default = "/home/viraj/company-test/terraform/jenkins-terraform/"
}




