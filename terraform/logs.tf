# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "assign01_log_group" {
  name              = "/ecs/assign01-app"
  retention_in_days = 30

  tags = {
    Name = "assign01-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "assign01_log_stream" {
  name           = "assign01-log-stream"
  log_group_name = aws_cloudwatch_log_group.assign01_log_group.name
}
