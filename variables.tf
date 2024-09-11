variable team_name {
  type        = string
  default     = "dev"
  description = "team name"
}

variable env_name {
  type        = string
  default     = "dev"
  description = "env name"
}

variable backend_ami {
  type        = string
  default     = ""
  description = "backend_ami name"
}


variable backend_instance_type {
  type        = string
  default     = ""
  description = "backend_instance_type"
}
