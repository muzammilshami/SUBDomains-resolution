figlet "IP-RESOLUTION"
echo "Enter Domian Name where IP Resolution required"
echo
echo
read url
figlet "SUB-Lister"
sublist3r -d $url -o domains.txt
echo
echo "IP'S RESOLUTION FOR SUBDOMAINS"
for c in $(cat domains.txt); do
host $c
done
echo
echo "Brute Host of subdomains"
dnsrecon -d $url -D /home/muzzamil/subdomains.txt -t brt -j /home/muzzamil/subip.txt
echo
echo
echo "The End"
