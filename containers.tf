resource "proxmox_lxc" "terraform-test" {
  target_node  = "pve01"                    # Hôte Proxmox sur lequel créer le conteneur
  hostname     = "terraform-test"           # Nom du conteneur
  ostemplate   = "local:vztmpl/almalinux-9-default_20221108_amd64.tar.xz"  # Chemin vers le modèle de conteneur
  password     = "terraform"                # Mot de passe du conteneur
  unprivileged = true                       # Exécuter le processus du conteneur sans privilèges

  rootfs {
    storage = "local-lvm"   # Stockage pour le système de fichiers racine du conteneur
    size    = "5G"          # Taille du système de fichiers racine
  }

  network {
    name   = "eth0"     # Nom de l'interface réseau dans le conteneur
    bridge = "vmbr0"    # Pont réseau associé
    ip     = "dhcp"     # Attribution IP via DHCP
  }
}
