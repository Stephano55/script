#!/usr/bin/env python3
import ipaddress

def cidr_to_netmask(cidr):
    try:
        network = ipaddress.IPv4Network(f"0.0.0.0/{cidr}", strict=False)
        return str(network.netmask)
    except ValueError:
        return "Format CIDR invalide"

cidr_input = input("Entrez un masque CIDR (ex: /24 ou 24) : ").strip().lstrip('/')
netmask = cidr_to_netmask(cidr_input)
print(f"Le masque décimal est : {netmask}")
