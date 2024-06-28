# Configuring DNS

## On Windows

Control Panel > Network and Sharing Center > Change Adapter Settings

Select the adapter (ethernet typically if plugged in directly to router)

Next select on Properties, enter credientials if requried and select Internet Protocol Version 4 (TCP/IPv4)

Select the option to "Use the following DNS server addresses" and enter your adguard server IP address as the Preferred DNS server

set the Alternate DNS server to 1.1.1.1 or 1.0.0.1 for cloudflare. Alternatively use a different IP address for other DNS provider as a backup.

## On Linux

Run the script in the scripts directory /scripts/configDNS.sh

## On Mac