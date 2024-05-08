terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
       version = "3.0.1-rc1"
    }
  }

  backend "http" {
    # Configure HTTP backend as needed
  }
}

provider "proxmox" {
  pm_api_url          = var.proxmox_url
  pm_api_token_secret = var.api_token
  pm_api_token_id     = var.api_id
}
