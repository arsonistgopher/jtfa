resource "junos-qfx_vlan-access-port" "ge25" {
        resource_name = "customerXYdev1port25"
        port_name = "ge-0/0/25"
        port_desc = "Customer XYZ mapped to VLAN ${junos-qfx_vlan.vlan442xyz.vlan_num}"
   	port_vlan = "${junos-qfx_vlan.vlan442xyz.vlan_num}"
        port_speed = "1g" # A Optional, if not used goes to default. Mapping is Junos specific like: 100m, 1g, 100g, auto etc"
}
