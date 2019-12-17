terraform {
	requied_version = ">= 0.12.8, <= 0.12.12"
}
provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.3.0"

  # Имя поменяйте на другое
  name = "storage-bucket-testqwerty54323212"
  location = var.region
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
