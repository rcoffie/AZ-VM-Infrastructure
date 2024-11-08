variable "location" {
  type = string
}

variable "resource_group_name" {
  type    = string
  default = "vm-rg"
}

variable "admin_username" {
  type    = string
  default = "adminuser"

}

variable "admin_password" {
  type = string

}