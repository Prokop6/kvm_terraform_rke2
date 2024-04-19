resource "libvirt_network" "rke_test_network" {
	autostart	= true
	name 		= "rke_test_network"
	mode		= "nat"
	domain		= "rke.prokop"
	addresses	= ["10.0.1.0/24"]
	dns	{
	enabled = true
}

}
