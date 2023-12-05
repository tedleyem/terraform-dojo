# API Gateway actions

# Api gateway resource with info created from rest_api in main.tf
resource "aws_api_gateway_resource" "resource" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  path_part   = "{proxy+}"  #listen to all requests
}

# Determines how the API Gateway can be reached
resource "aws_api_gateway_method" "method" {
  rest_api_id   = "${aws_api_gateway_rest_api.api.id}"
  resource_id   = "${aws_api_gateway_resource.resource.id}"
  http_method   = "ANY" # argument to take it all in
  authorization = "NONE"
  request_parameters = {
    "method.request.path.proxy" = true
  }
}

# Determines interactions with the backend
  #  integration_http_method - (Optional) Integration HTTP method
  #  (GET, POST, PUT, DELETE, HEAD, OPTIONs, ANY, PATCH)
  #  specifying how API Gateway will interact with the back end.
  #  Required if type is AWS, AWS_PROXY, HTTP or HTTP_PROXY.
  #  Not all methods are compatible with all AWS integrations. e.g.,
  #  Lambda function can only be invoked via POST.

resource "aws_api_gateway_integration" "integration" {
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  resource_id = "${aws_api_gateway_resource.resource.id}"
  http_method = "${aws_api_gateway_method.method.http_method}"
  integration_http_method = "GET" # specifying how API Gateway will interact with the back end
  type                    = "HTTP_PROXY"
  uri                     = "http://meralus.com/{proxy}"

  request_parameters =  {
    "integration.request.path.proxy" = "method.request.path.proxy"
  }
}

resource "aws_api_gateway_deployment" "deployment" {
  rest_api_id = aws_api_gateway_rest_api.api.id
    # Depends on parameter is required below
    # https://github.com/hashicorp/terraform/issues/7588#issuecomment-232427478
  depends_on = [aws_api_gateway_method.method]
  triggers = {
    redeployment = sha1(jsonencode(aws_api_gateway_rest_api.api.body))
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_stage" "stage" {
  deployment_id = aws_api_gateway_deployment.deployment.id
  rest_api_id   = aws_api_gateway_rest_api.api.id
  stage_name    = "stage"
}