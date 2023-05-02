resource "aws_instance" "awscloud" {
    ami = "ami-0578f2b35d0328762"
    instance_type = "t2.micro"
    key_name = "terraform-key"
    vpc_security_group_ids = [aws_security_group.awscloudsg.id]
    tags = {
        Name = "awscloud"
    }
}
