resource "kubernetes_pod" "pod-multi" {
  metadata {
    name = "pod-multi-2"
  }

  spec {
    container {
      name  = "container1"
      image = "nginx"
    }

    container {
      name    = "container2"
      image   = "busybox"
      command = ["sleep","4800"]
    }
  }
}