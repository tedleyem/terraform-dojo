resource "grafana_dashboard" "elasticsearch" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/elasticsearch", "*.json")
  config_json = file("${path.module}/dashboards/elasticsearch/${each.key}")
  folder      = grafana_folder.ElasticSearch.id
}

resource "grafana_dashboard" "influxdb" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/influxdb", "*.json")
  config_json = file("${path.module}/dashboards/influxdb/${each.key}")
  folder      = grafana_folder.InfluxDB.id
}

resource "grafana_dashboard" "aws" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/aws", "*.json")
  config_json = file("${path.module}/dashboards/aws/${each.key}")
  folder      = grafana_folder.AWS.id
}

resource "grafana_dashboard" "nba" {
  provider = grafana.cloud

  for_each    = fileset("${path.module}/dashboards/nba", "*.json")
  config_json = file("${path.module}/dashboards/nba/${each.key}")
  folder      = grafana_folder.AWS.id
}