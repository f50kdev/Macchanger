#!/bin/bash

# Interface name (change if necessary)
INTERFACE="wlan0"

# Check if the interface exists
if ! ip link show "$INTERFACE" &>/dev/null; then
    echo "Interface $INTERFACE not found."
    exit 1
fi

# Disable the interface
echo "[*] Disabling $INTERFACE..."
sudo ip link set "$INTERFACE" down

# Generate and apply a new random MAC address
echo "[*] Changing the MAC address..."
sudo macchanger -r "$INTERFACE"

# Re-enable the interface
echo "[*] Re-enabling $INTERFACE..."
sudo ip link set "$INTERFACE" up

# Display the new MAC address
echo "[*] New MAC address applied:"
ip link show "$INTERFACE" | grep ether

##https://github.com/f50kdev/Macchanger.git
