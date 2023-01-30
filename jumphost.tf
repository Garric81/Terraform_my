# variables
variable "vcd_user" {}
variable "vcd_pass" {}
variable "vcd_org" {}
variable "vcd_vdc" {}
variable "vcd_url" {}
variable "vcd_allow_unverified_ssl" {
    default = true
}

# Configure the VMware vCloud Director Provider
provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  org                  = var.vcd_org
  vdc                  = var.vcd_vdc
  url                  = var.vcd_url
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

# Get the vcd network as a data source
data "vcd_network_routed" "net" {
  name = "workplace-network"
}

# Create the vApp
resource "vcd_vapp" "jumphost" {
  name = "jumphost"
}

# Create the VM in the vApp
resource "vcd_vapp_vm" "jumphost" {
  vapp_name = vcd_vapp.jumphost.name
  name = "jumphost01"
  catalog_name = "KMsky IAAS Templates - Sweden"
  template_name = "Windows Server 2016 Datacenter - Basic"
  
  computer_name = "jumphost01"
  memory = 4096
  cpus = 2
  cpu_cores = 1

  # Map the network from the data source to the VM
  network {
      name = data.vcd_network_routed.net.name
      type = "org"
      ip = "10.10.0.10"
      ip_allocation_mode = "MANUAL"
      is_primary = true
  }

  depends_on = [vcd_vapp.jumphost]
}