resource "kubernetes_namespace" "tf-nginx-ns" {
  metadata {
    name = "tf-namespace"
  }
}

resource "kubernetes_deployment" "test-deploy" {
  metadata {
    name = "terraform-test-deployment"
    labels = {
      test = "TestApp"
    }
    namespace = "tf-namespace"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "TestApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "TestApp"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "nginx"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }
        }
      }
    }
  }
}

