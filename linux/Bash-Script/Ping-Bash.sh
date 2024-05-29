#!/bin/bash

# Function to convert an IP address to a number
ip_to_num() {
    local IFS=.
    local -a octets=($1)
    echo $(( (${octets[0]} << 24) + (${octets[1]} << 16) + (${octets[2]} << 8) + ${octets[3]} ))
}

# Function to convert a number back to an IP address
num_to_ip() {
    echo "$(( ($1 >> 24) & 255 )).$(( ($1 >> 16) & 255 )).$(( ($1 >> 8) & 255 )).$(( $1 & 255 ))"
}

# Function to iterate over a range of IP addresses
ping_range() {
    local start_ip=$(ip_to_num $1)
    local end_ip=$(ip_to_num $2)

    for ((ip_num=start_ip; ip_num<=end_ip; ip_num++)); do
        ip=$(num_to_ip $ip_num)
        if ping -c 1 -W 1 $ip &> /dev/null; then
            echo "Server $ip is Up and Running"
        else
            echo "Server $ip is Unreachable"
        fi
    done
}

# Check if the script receives exactly 2 arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_ip> <end_ip>"
    exit 1
fi

# Ping the range of IP addresses
ping_range $1 $2

~

