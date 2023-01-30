#=====Настройки для подключения======
variable "connect" {
 type = map
 default = {
 "organization" = "Cloud_155403_9";
 "url_connect" = "https://one.msk.cloud.mts.ru/api"
 "data_center" = "Cloud_155403_9_VDC"
 "user" = "pseudolukian"
 "password" = "W7JnMEDvHE7n"
 }
}
#Настройки виртуального роутера
variable "edge" {
 type = map
 default = {
  "ip" = "89.22.173.56"
  "name" = "Cloud_155403_9_Edge"
 }
}
#Настройки внешней сети
variable "main_web" {
 type = map
 default = {
  "name" = "1Cloud-BackBone"
  "type" = "ext"
 }
}
variable "routed_web" {
  type = map

  default =  {
    "edge" = "Cloud_155403_9_Edge" #Название виртуального роутера
    "name" = "routed_web" #Название создаваемой сети
    "gateway" = "10.10.0.1" #Шлюз сети
    "cidr" = "10.10.0.1/24" #CIDR сети
    "dhcp_start" =  "10.10.0.2" #Начало диапазона dhcp-адресов
    "dhcp_end" =  "10.10.0.2" #Конец диапазона dhcp-адресов
    "static_start" = "10.10.0.3" #Начало диапазона static_IP-адресов
    "static_end" = "10.10.0.5" #Конец диапазона static_IP-адресов
    "type" = "org" #Тип сети
    "netmask" = "255.255.255.0" #Маска сети
    "dns_1" = "8.8.8.8" #Адрес 1 DNS сервера
    "dns_2" = "1.1.1.1" #Адрес 2 DNS сервера
  }
}