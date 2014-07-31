#!/bin/sh
for i in {1..400}; do 
ipa user-del testuser$i
done
