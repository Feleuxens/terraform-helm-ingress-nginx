resource "helm_release" "ingress-nginx" {
  name = "ingress-nginx"

  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "1.0.2"

  values = [
    templatefile("${path.module}/helm-values/ingress-nginx.yaml", {
      enable_metrics : var.enable_metrics
      cpu_request : var.cpu_request
      memory_request : var.memory_request
      memory_limit : var.memory_limit
    })
  ]
}