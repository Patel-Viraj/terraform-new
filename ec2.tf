resource "aws_instance" "my_instance" {
     tags = {
          Name = lookup(var.aws_instance_name,var.infrastructure)
     }
     # count =  lookup(var.aws_instance_count,var.infrastructure)   
     ami = lookup(var.aws_ami,var.infrastructure)
     instance_type = var.aws_instance_type
     availability_zone = lookup(var.aws_availability_zone,var.infrastructure)
     subnet_id = aws_subnet.publicsubnets.id
     user_data = file("${var.script_path}script.sh")
     key_name = lookup(var.key_name,var.infrastructure)
     
}

   

 resource "aws_ebs_volume" "my_volume" {
     availability_zone = lookup(var.aws_availability_zone,var.infrastructure)
     size = 8
}

resource "aws_volume_attachment" "my_volume_att" {
     device_name = "/dev/sdh"
     volume_id   = aws_ebs_volume.my_volume.id
     instance_id = aws_instance.my_instance.id
}