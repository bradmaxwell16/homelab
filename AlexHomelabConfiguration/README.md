Hello! 

I love you and I hope your day is going well so far!

This file contains the general details you will need, as well as your credentials, to get started working on your HomeLab setup!

# VMWare #

URL: https://10.1.1.11/ or https://mh-vcenter.maxleyhouse.org/

Description: VCenter is the Orchestration VM that interfaces with my ESXI (tier 1 hypervisor). This is the interface that you will log in to to handle a majority of your "Virtual Machine" related tasks. Creation, Networking, and any "Hardware" related tasks will occur in this portal.

Note: This should allow you to login just fine, but you may run into an issue where it says it cannot be found. If this happens, it means the DNS name is not resolving correctly and you will need to point at one of my DNS servers that knows how to translate it. As I said, should work, but may not. Let me know if this gives you trouble.

# Fortigate Firewall #

URL: https://10.1.1.1

Description: This is my primary firewall. my Homelab network exists behind this. You will need to set configuration in the firewall to allow communication outside of the homelab network (e.g. on the regular LAN or to the outside world!)

# Pi-Hole #

URL: https://192.168.0.215

Description: This is my ad-blocker and also one of the primary DNS Servers for the main network.


# Networking details to be aware of! #

User LAN: 192.168.0.0/24 via 192.168.0.1

Homelab LAN: 10.1.1.0/24 via 10.1.1.1

When networking in the VMWare environment, Always choose the VM Network, not External VM Network.

# Servers already existing in the environment that you may want to interact with: #

MH-Mail - 10.1.1.25 - Anonymous mail relay, can send notifications through here.

MH-DC01 - 10.1.1.20 - Domain Controller

MH-Kali - 10.1.1.90 - Kali Linux box - Equipped with all of the hackerman tools.

MH-CA - 10.1.1.221 - Certificate Authority running OpenSSL, if you want to create a certificate a website!


