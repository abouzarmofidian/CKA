
resource "kubernetes_pod" "admin-pod" {
  metadata {
    name = "admin-pod-2"
  }

  spec {
    container {
      name    = "admin-container"
      image   = "busybox"
      command = ["sleep", "3200"]
      security_context {
        capabilities {
          add = ["SYS_TIME"]
        }
      }
    }
  }
}