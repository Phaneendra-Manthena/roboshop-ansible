variable "cluster_common_helm_tolerations" {
  type = list(object({
    effect   = string
    key      = string
    operator = string
    value    = string
  }))
  default     = []
  description = "Taints to be applied to the primary node group."
  nullable    = false
}
["NoSchedule", "PreferNoSchedule", "NoExecute"]

resource "taints" "test" {
effect   = "NoSchedule"
key      = "some_key"
operator = "Equals"
value    = "sone_value"
}

[
{
effect   = "NoSchedule"
key      = "Key1"
operator = "Equals"
value    = "Value1"
}
{
effect   = "PreferNoSchedule"
key      = "Key2"
operator = "Equals"
value    = "Value2"
}
]