resource "grafana_folder" "ElasticSearch" {
  provider = grafana.cloud

  title = "ElasticSearch"
}

resource "grafana_folder" "InfluxDB" {
  provider = grafana.cloud

  title = "InfluxDB"
}

resource "grafana_folder" "AWS" {
  provider = grafana.cloud

  title = "AWS"
}

resource "grafana_folder" "NBA" {
  provider = grafana.cloud

  title = "NBA"
}

