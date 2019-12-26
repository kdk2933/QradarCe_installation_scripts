#! /bin/sh

sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/selinux/config && cat /etc/selinux/config
 
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf

yum install -y nano 
yum install -y git
yum install -y wget

mkdir /media/cdrom

echo “Wait for 5 seconds”
sleep 5
echo “Completed”

reboot