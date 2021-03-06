#!/usr/bin/env bash

# Installs Intel PowerTop and adds a systemd service to autotune every boot

source ./utils/utils.sh

PM=$(get_package_manager)

sudo $PM install -y powertop

cat << EOF | sudo tee /etc/systemd/system/powertop.service
[Unit]
Description=PowerTOP auto tune

[Service]
Type=idle
Environment="TERM=dumb"
ExecStart=/usr/sbin/powertop --auto-tune

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable powertop.service
