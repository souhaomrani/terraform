terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "3.0.1-rc1"
    }
  }
}

provider "proxmox" {
  pm_api_url         = "https://192.168.127.134:8006/api2/json"
  pm_user            = "root@pam!souhasouha"
  pm_password        = "faf0b3f2-8df5-48ec-b726-6fadc60aa5d1"
  pm_tls_insecure    = true
}

resource "proxmox_vm_qemu" "terraform-test" {
  name        = "terraform-test"                               # Nom de la machine virtuelle
  target_node = "pve"                                           # Noeud Proxmox où déployer la machine virtuelle
  iso         = "local:iso/ubuntu-22.04.3-desktop-amd64.iso"    # Nom du fichier ISO pour l'installation

}
