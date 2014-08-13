#!/bin/sh
#run this on the ipa server first
#ipa host-add --password=secret server.example.com

#then enroll the client
ipa-client-install --unattended -w secret
