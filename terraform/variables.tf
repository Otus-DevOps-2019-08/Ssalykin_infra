variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access appuser"
}
variable disk_image {
  description = "Disk image"
}
variable private_key_path {
  # Описание переменной
  description = "Path to the private key used for ssh access appuser"
}
variable machine_type {
  description = "machine type"
  # Значение по умолчанию
  default = "g1-small"
}