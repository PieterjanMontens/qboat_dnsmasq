#!/bin/bash
START=1
END=60

echo "Updating Hosts and Resolv.conf files"
for i in $(seq $START $END)
do
    # Read Hosts
    host_fqdn="HOST_"$i"_FQDN"
    host_name="HOST_"$i"_NAME"
    host_ip="HOST_"$i"_IP"
    if [[ -n "${!host_fqdn}" ]]
    then
        if [[ -z "${!host_name}" ]]
        then
            echo "${!host_ip}   ${!host_fqdn}" >> /etc/hosts
        else
            echo "${!host_ip}   ${!host_fqdn} ${!host_name}" >> /etc/hosts
        fi
    fi

    # Read nameservers
    nameserver="NAMESERVER_"$i
    if [[ -n "${!nameserver}" ]]
    then
        echo "nameserver ${!nameserver}" >> /etc/resolv.conf
    fi
done

echo "Executing Dnsmasq"
dnsmasq --keep-in-foreground
