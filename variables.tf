variable "enable_metrics" {
  default = "false"
  type    = string
}

variable "cpu_request" {
  default = "100m"
  type    = string
}
variable "memory_request" {
  default = "128Mi"
  type    = string
}

variable "memory_limit" {
  default = "512Mi"
  type    = string
}