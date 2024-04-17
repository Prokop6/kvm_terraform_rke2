resource "libvirt_volume" "opensuse" {
	name = "opensuse"
	pool = "default"
	source = "/var/kvm_images/openSUSE-Leap-15.5-DVD-x86_64-Build491.1-Media.iso"
	format = "iso"
}

resource "libvirt_domain" "opensuse" {
	name = "opensuse"
	memory = "2048"
	vcpu = 2

network_interface {
	network_name = "default"
}

disk {
	volume_id = "${libvirt_volume.opensuse.id}"
}

console {
	type = "pty"
	target_type = "serial"
	target_port = "0"
}
}
output "ip" {
	value = "${libvirt_domain.opensuse.network_interface.0.addresses.0}"

}
