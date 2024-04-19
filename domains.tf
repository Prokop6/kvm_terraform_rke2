resource "libvirt_volume" "kernel_01" {
	source		= "/home/marcin/Downloads/openSUSE-Leap-15.5-DVD-x86_64-Build491.1-Media.iso"
	#source		= "/home/cicd/images/openSUSE-Leap-15.5-DVD-x86_64-Build491.1-Media.iso"
	name		= "test_vm"
	pool		= libvirt_pool.data_pool_01.name
	format		= "iso"
}
resource "libvirt_domain" "test_01" {
	name		= "suse"
	kernel		= libvirt_volume.kernel_01.id
	vcpu		= 2
	memory		= "2048"
	
	network_interface {
		network_id 	= libvirt_network.rke_test_network.id
		hostname	= "suse"
		#addresses	= ["10.0.1.2"]
		#wait_for_lease	= true	
}
	graphics {
		type		= "vnc"
}
}

