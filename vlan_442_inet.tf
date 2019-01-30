resource "junos-qfx_vlan-inet-iface" "vlan442" {
        resource_name = "customerXYvlaninetiface442"
        vlan_name = "${junos-qfx_vlan.vlan442xyz.vlan_num}"
        vlan_inet_address = "10.10.42.10/24"
}
