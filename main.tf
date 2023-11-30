resource "helm_release" "ingress-nginx" {
  name = "ingress-nginx"

  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.8.3"
  create_namespace = true
  namespace = "ingress-nginx"

  values = [
    templatefile("${path.module}/helm-values/ingress-nginx.yaml", {
      enable_metrics : var.enable_metrics
      cpu_request : var.cpu_request
      memory_request : var.memory_request
      memory_limit : var.memory_limit
    })
  ]
}