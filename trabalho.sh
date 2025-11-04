#!/bin/bash
 
grep -Eo '\b[01]{1,8}\b' bruxarias.dat > 1a.txt
grep -Eo '\b1[01]{0,7}\b' bruxarias.dat > 1b.txt
grep -Ex '1[01]{7}' bruxarias.dat > 1c.txt
grep -Eo '\b(0|[1-9][0-9]*)\b' bruxarias.dat > 1d.txt
grep -Eo '[ue]tt' bruxarias.dat > 1e.txt
grep -Eo '\b[A-Z]?[a-z]{2,}\b' bruxarias.dat | grep -v "'" > 1f.txt
grep -Eo '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.dat > 1g.txt
grep -Eo '\b(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])){3}\b' bruxarias.dat > 1h.txt
 
find /etc -type d > 2a.txt
find /etc -maxdepth 1 -type d > 2b.txt
find /etc -type f -size +1k > 2c.txt
find /var -type f -mtime +7 > 2d.txt
 
awk -F: '{print $1}' /etc/passwd > 3a.txt
awk 'NR>=10 && NR<=20 {print $1}' FS=":" /etc/passwd > 3b.txt
 
sed "s/^$(whoami):/exercicio:/" /etc/passwd > 4a.txt
sed "/^$(whoami):/d" /etc/passwd > 4b.txt
