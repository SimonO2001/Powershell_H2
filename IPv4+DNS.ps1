# Sætter IPv4 adresse, subnetmask og default gateway
New-NetIPAddress –IPAddress 169.254.122.23 -DefaultGateway 169.254.122.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex

# Sætter navn på internet interfacet
$InterfaceAlias = (Get-NetIPInterface | Where-Object {$_.InterfaceAlias -like "*Ethernet*"}).InterfaceAlias

# Sætter DNS'en
$DNS = "169.254.122.23"

# Sætter navn på DNS interfacet
Set-DnsClientServerAddress -InterfaceAlias $InterfaceAlias -ServerAddresses $DNS
