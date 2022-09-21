variable "image_id" {
  type = string
  default = "hello terraform"
}

variable "image_map" {
  type = map(string)
  default = {
    name = "role"
    description = "description"
  }
}

variable "image_list" {
  type = map(string)
  default = {
    name = "role"
    description = "description"
  }
}

