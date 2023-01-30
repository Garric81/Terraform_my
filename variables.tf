###
# vcd_org_user - имя пользователя с правами Organization Administrator,

#vcd_org_password - пароль пользователя,

#vcd_org - название организации,

#vcd_org_vdc - название виртуального дата-центра,

#vcd_org_url - API URL,

#vcd_org_edge_name - название виртуального маршрутизатора,

#vcd_org_catalog - название каталога с шаблонами виртуальных машин,

#vcd_edge_external_ip - публичный IP-адрес,

#vcd_edge_external_network - название внешней сети,

#vcd_org_hdd_sp - название политики хранения HDD,

#vcd_org_ssd_sp - название политики хранения SSD.
#>
###

variable "vcd_org_user" {

  description = "vCD Tenant User"

}

variable "vcd_org_password" {

  description = "vCD Tenant Password"

}

variable "vcd_org" {

  description = "vCD Tenant Org"

}

variable "vcd_org_vdc" {

  description = "vCD Tenant VDC"

}

variable "vcd_org_url" {

  description = "vCD Tenant URL"

}

variable "vcd_org_max_retry_timeout" {

  default = "60"

}

variable "vcd_org_allow_unverified_ssl" {

  default = "true"

}

variable "vcd_org_edge_name" {

  description = "vCD edge name"

}

variable "vcd_org_catalog" {

  description = "vCD public catalog"

}

variable "vcd_template_os_centos7" {

  description = "OS CentOS 7"

  default = "CentOS7"

}

variable "vcd_org_ssd_sp" {

  description = "Storage Policies"

  default = "Gold Storage Policy"

}

variable "vcd_org_hdd_sp" {

  description = "Storage Policies"

  default = "Bronze Storage Policy"

}

variable "vcd_edge_local_subnet" {

  description = "Organization Network Subnet"

}

variable "vcd_edge_external_ip" {

  description = "External public IP"

}

variable "vcd_edge_local_ip_nginx" {}

variable "vcd_edge_local_ip_bitrix" {}

variable "vcd_edge_local_ip_nextcloud" {}

variable "vcd_edge_external_network" {}