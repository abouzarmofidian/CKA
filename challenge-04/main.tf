resource "kubernetes_namespace" "defense" {
  metadata {
    name = "defense"
  }
}

resource "kubernetes_pod" "frontend" {
  metadata {
    name      = "delta-pod-2"
    namespace = "defense"
    labels = {
      env  = "dev"
      tier = "front"
    }
  }

  spec {
    container {
      name  = "delta-container"
      image = "nginx:1.17"
    }
  }
}
