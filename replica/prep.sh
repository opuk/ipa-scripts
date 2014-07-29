#!/bin/sh
#Run on master
#scp the gpg file to replica
ipa-replica-prepare --ip-address=192.168.122.136 ipa2.ipa.example.com

