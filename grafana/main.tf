terraform {
   required_providers {
      grafana = {
         source  = "grafana/grafana"
         version = "1.40.1"
      }
   }
}

provider "grafana" {
   alias = "cloud"
   url   = var.grafana_url
   auth  = var.grafana_account_token
}