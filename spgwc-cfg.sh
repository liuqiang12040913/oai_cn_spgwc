#!/bin/bash

cd /openair-spgwc

ifconfig lo:s5c 127.0.0.15 up
echo "ifconfig lo:s5c 127.0.0.15 up --> OK"
ifconfig lo:p5c 127.0.0.16 up
echo "ifconfig lo:p5c 127.0.0.16 up --> OK"

INSTANCE=1
PREFIX='/openair-spgwc/etc'

MY_APN='apn1.carrier.com'
MY_PRIMARY_DNS='8.8.8.8'
MY_SECONDARY_DNS='8.8.4.4'

declare -A SPGWC_CONF

SPGWC_CONF[@INSTANCE@]=$INSTANCE
SPGWC_CONF[@PID_DIRECTORY@]='/var/run'
SPGWC_CONF[@SGW_INTERFACE_NAME_FOR_S11@]='eth0'
SPGWC_CONF[@SGW_INTERFACE_NAME_FOR_S5_S8_CP@]='lo:s5c'
SPGWC_CONF[@PGW_INTERFACE_NAME_FOR_S5_S8_CP@]='lo:p5c'
SPGWC_CONF[@PGW_INTERFACE_NAME_FOR_SX@]='eth0'
SPGWC_CONF[@DEFAULT_DNS_IPV4_ADDRESS@]=$MY_PRIMARY_DNS
SPGWC_CONF[@DEFAULT_DNS_SEC_IPV4_ADDRESS@]=$MY_SECONDARY_DNS
SPGWC_CONF[@DEFAULT_APN@]=$MY_APN

for K in "${!SPGWC_CONF[@]}"; do 
  egrep -lRZ "$K" $PREFIX | xargs -0 -l sed -i -e "s|$K|${SPGWC_CONF[$K]}|g"
done

exit 0
