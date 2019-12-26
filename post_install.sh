#! /bin/sh

getenforce --verbrose

mount -o loop /tmp/QRadarCE7_3_1.GA.iso  /media/cdrom

rpm -Uvh /media/cdrom/3rdparty/pf_ring/kmod-pf_ring-6.2.0_3.10.0_862-1.el7.x86_64.rpm --nodeps

echo “Wait for 5 seconds”
sleep 5
echo “Completed”

exit