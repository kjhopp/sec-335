param($network,$server)
for ($i = 0; $i -lt 255; $i++)
{

$ip = "$network" + "." + "$i"

$result = Resolve-DnsName -DnsOnly $ip -Server $server -ErrorAction Ignore | Select -Property NameHost, Name
echo $result

}