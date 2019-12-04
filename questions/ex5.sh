#!/bin/bash -x

cat /home/admin1/linux-content/linux-content/access.log | grep 'http' | awk '{print $11}' | grep -v '"-"' | head -4

