output "rest_api_id" {
  description = "REST API id"
  value       = aws_api_gateway_rest_api.api.id
}

output "deployment_id" {
  description = "Deployment id"
  value       = aws_api_gateway_deployment.deployment.id
}

output "deployment_invoke_url" {
  description = "Deployment invoke url"
  value       = aws_api_gateway_deployment.deployment.invoke_url
}

output "name" {
  description = "API Gateway name"
  value       = aws_api_gateway_rest_api.api.name
}