#!/bin/bash


cat split.03 | while read output; 
do
NMAP=$(nmap -sn $output )
if ! [[ $NMAP == *"Host is up"* || $NMAP == *"closed"* ]]; then
echo "$output" >> deadhost3
fi
done
