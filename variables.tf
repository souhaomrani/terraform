variable "pm_api_url" {
  type    = string
  default = "https://192.168.127.134:8006/api2/json"  # URL de l'API Proxmox
}

variable "pm_api_token_id" {
  type    = string
  default = "root@pam!souhasouha"  # Identifiant du jeton API Proxmox
}

variable "pm_api_token_secret" {
  type    = string
  default = "faf0b3f2-8df5-48ec-b726-6fadc60aa5d1"  # Secret du jeton API Proxmox (à remplacer par votre propre valeur)
}

variable "template" {
  type    = string
  default = "ubuntu.robert.local"  # Nom du modèle pour la création de la machine virtuelle Proxmox
}
