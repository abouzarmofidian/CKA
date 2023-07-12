resource "kubernetes_deployment" "web-proj-268" {
  metadata {
    name = "web-proj-268"
  }

  spec {
    replicas = 1
    template {
      metadata {
        name = "web-proj-268"
      }
      spec {
        container {
          name  = "web-proj-268"
          image = "nginx:1.16"
        }
      }
    }
  }
}