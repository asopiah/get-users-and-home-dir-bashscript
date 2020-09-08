#!/usr/bin/env bash
awk -F: 'BEGIN{OFS=":"} $3 >= 1000 && $3<=65534 {print $1,$6}' /etc/passwd
