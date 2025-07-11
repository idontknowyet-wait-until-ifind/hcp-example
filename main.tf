terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.76.0"
    }
  }
}

provider "hcp" {
  # Auth via env vars or here directly (not recommended)
  # client_id     = var.hcp_client_id
  # client_secret = var.hcp_client_secret
}

resource "hcp_packer_bucket" "example" {
  project_id   = "6fb7aea2-0127-4b62-91ac-5de4b173a0e4"     # Replace with actual project ID
  name         = "my-packer-bucket"
}
