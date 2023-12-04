resource "aws_api_gateway_rest_api" "example" {
  name        = "gateway-rest-api-${var.environment_name}"
  description = "aws api gateway object"
  tags     = "${local.tags}"
}



