#!/bin/bash


cat split.14 | while read output; 
do
NMAP=$(nmap -sn $output )
if ! [[ $NMAP == *"Host is up"* || $NMAP == *"closed"* ]]; then
echo "$output" >> deadhost14
fi
done
