resource "libvirt_pool" "data_pool_01" {
	name		= "data_pool_01"
	type		= "dir"
	path		= "/home/cicd"
}
