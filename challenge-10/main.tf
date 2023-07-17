resource "kubernetes_namespace" "app-team1" {
  metadata {
    name = "app-team1"
  }
}

resource "kubernetes_cluster_role" "deployment-clusterrole" {
  metadata {
    name = "deployment-clusterrole-2"
  }

  rule {
    api_groups = ["apps"]
    resources  = ["Deployment", "StatefulSet", "DaemonSet"]
    verbs      = ["create"]
  }
}

resource "kubernetes_service_account" "cicd-token" {
  metadata {
    name      = "cicd-token"
    namespace = "app-team1"
  }
}

resource "kubernetes_cluster_role_binding" "deploy-b" {
  metadata {
    name = "cluster-role-binding"
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "deployment-clusterrole"
  }

  subject {
    kind      = "ServiceAccount"
    name      = "cicd-token"
    namespace = "app-team1"
  }

  depends_on = [
    kubernetes_cluster_role.deployment-clusterrole
  ]
}