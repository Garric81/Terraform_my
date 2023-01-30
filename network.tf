resource "vcd_network_routed" "net" {

  name = "net_lan01"

  edge_gateway = var.vcd_org_edge_name

  gateway = "192.168.110.254"

  dns1 = "1.1.1.1"

  dns2 = "8.8.8.8"

 static_ip_pool {

start_address = "192.168.110.1"

end_address = "192.168.110.253"

  }

}