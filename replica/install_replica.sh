#!/bin/sh
#Run om replica
ipa-replica-install --setup-ca --forwarder=192.168.122.1 --setup-dns --no-reverse /var/lib/ipa/replica-info-ipa2.example.com.gpg
