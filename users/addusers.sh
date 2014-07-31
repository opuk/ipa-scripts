#!/bin/sh
for i in {1..50000}; do 
ipa user-add --first=testuser$i --last=testuser$i testuser$i
done
