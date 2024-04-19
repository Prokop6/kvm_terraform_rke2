terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
	uri = "qemu+ssh://rke2_host/system"
}
