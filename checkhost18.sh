#!/bin/bash


cat split.18 | while read output; 
do
NMAP=$(nmap -sn $output )
if ! [[ $NMAP == *"Host is up"* || $NMAP == *"closed"* ]]; then
echo "$output" >> deadhost18
fi
done
