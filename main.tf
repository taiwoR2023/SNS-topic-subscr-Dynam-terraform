resource "aws_instance" "first-ec2" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = var.instance_type
  
tags = {
Name = "test-server"
Env = "Dev"
Owner = "RT-Shoge"

}

}

resource "aws_sns_topic" "demonstration" {
     name = var.topic_name
}
 # Adding sns subscription to the topic created above
resource "aws_sns_topic_subscription" "email-clients" {
    topic_arn = aws_sns_topic.demonstration.arn
    protocol = var.protocol_type
    endpoint = var.end_point
}
  


