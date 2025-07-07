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
  project_id   = "your-hcp-project-id"     # Replace with actual project ID
  name         = "my-packer-bucket"
}
