resource "junos-qfx_vlan-trunk-port" "ge26" {
        resource_name = "customerXYdev1port26"
        port_name = "ge-0/0/26"
        port_desc = "Customer XYZ VLAN Trunk add ${junos-qfx_vlan.vlan442xyz.vlan_num}"
   	port_vlan = "${junos-qfx_vlan.vlan442xyz.vlan_num}"
        port_speed = "10g" # A Optional, if not used goes to default. Mapping is Junos specific like: 100m, 1g, 100g, auto etc"
}
