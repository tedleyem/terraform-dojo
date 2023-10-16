variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "grafana_url" {
  description = "Grafana instance url"
  type        = string
  default     = ${{ secrets.TF_GRAFANA_URL }}
}

variable "grafana_account_token" {
  description = "Grafana Service Account token"
  type        = string
  default     = ${{ secrets.TF_GRAFANA_ACCOUNT_TOKEN }}
}
