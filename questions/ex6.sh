#!/bin/bash -x

cat r /home/admin1/linux-content/linux-content/access.log | grep 'http' | awk '{print $11 $4}' | grep -v '"-"' | head -4 

