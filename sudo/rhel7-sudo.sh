#!/bin/sh
sed -i '/^services.*/ s/$/, sudo/' /etc/sssd/sssd.conf
echo "sudoers: files sss" >> /etc/nsswitch.conf
