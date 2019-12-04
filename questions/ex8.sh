#!/bin/bash -x

cat r /home/admin1/linux-content/linux-content/access.log | grep 'http' | awk '{print $16}' | grep -v '"-"'| sort | uniq -u | head -4

