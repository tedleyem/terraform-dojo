#Create the REST API
resource "aws_api_gateway_rest_api" "api" {
  name        = "gateway-rest-api-${var.environment_name}"
  description = "Proxy to handle requests to our API"
  endpoint_configuration {
    types = ["EDGE"]
  }
  tags     = "${local.tags}"
}

# This is great but the AWS bill isn't high enough
# Lets add some cloudwatch logs to it
resource "aws_cloudwatch_log_group" "logs" {
  name              = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api.id}/${var.environment_name}"
  retention_in_days = 7
}

resource "aws_api_gateway_domain_name" "domain" {
  domain_name = "${var.domain_name_prefix}.${var.domain_name}"
}