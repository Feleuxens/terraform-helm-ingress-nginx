variable "allow_snippet_annotations" {
  default = false
  type = bool
  description = "Enable/Disable allow-snippet-annotation on ingresses"
}

variable "enable_metrics" {
  default = "false"
  type    = string
}

variable "cpu_request" {
  default = "250m"
  type    = string
}
variable "memory_request" {
  default = "768Mi"
  type    = string
}

variable "memory_limit" {
  default = "768Mi"
  type    = string
}